import 'package:cadu_fifa/app/modules/home/submodules/market/models/disputa_final_model.dart';
import 'package:cadu_fifa/app/modules/home/submodules/market/models/player_market_model.dart';
import 'package:cadu_fifa/app/modules/home/submodules/market/repositories/market_repository.dart';
import 'package:cadu_fifa/app/modules/home/submodules/market/utils/filter_price_player.dart';
import 'package:cadu_fifa/app/modules/home/submodules/team/team_controller.dart';
import 'package:cadu_fifa/app/shared/players/models/player_model.dart';
import 'package:cadu_fifa/app/shared/players/player_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'models/disputa_model.dart';
import 'models/team_mark_model.dart';

part 'market_controller.g.dart';

@Injectable()
class MarketController = _MarketControllerBase with _$MarketController;

abstract class _MarketControllerBase with Store {
  PlayerRepository repositoryPlayer = Modular.get();
  MarketRepository repositoryMarket = Modular.get();
  TeamController controllerTeam = TeamController();

  _MarketControllerBase() {
    autorun((_) {
      getDisp();
      getPlayers();
    });
  }

  Future<void> reloadList() async {
    await getDisp();
  }

  //PESQUISA DE JOGADORES
  @observable
  List<PlayerModel> allPlayers = [];

  Future getPlayers() async {
    allPlayers = await repositoryPlayer.catchAllPlayers();
  }

  @observable
  String search = '';

  @action
  void setSearch(String value) => this.search = value;

  List<PlayerModel> get filteredPlayers {
    final List<PlayerModel> filteredPlayers = [];

    if (search.isEmpty) {
      filteredPlayers.addAll(allPlayers);
    } else {
      filteredPlayers.addAll(allPlayers.where((player) =>
          player.name.toLowerCase().contains(search.toLowerCase())));
    }

    return filteredPlayers;
  }

  //RETORNAR NOME DO TIME DO JOGADOR PESQUISADO
  @observable
  String teamName;

  @action
  changeTeamName(String team) => this.teamName = team;

  Future getTeam(String idTeam) async {
    if (idTeam != null) {
      teamName = await repositoryPlayer.catchTeamPlayer(idTeam);
    }
    changeTeamName(teamName);
  }

  //TRANSFERENCIA DE JOGADOR SEM CLUB
  @observable
  int transferPrice = 0;

  @observable
  int inicialPricePlayer;

  @action
  changeTransferPrice(String value) =>
      transferPrice = int.parse(value.replaceAll(",", ""));

  @computed
  bool get checkPricePlayer => transferPrice >= inicialPricePlayer;

  @observable
  String error;

  @observable
  bool loadingTransfer = false;

  @observable
  bool success = false;

  @action
  changeError(String value) => this.error = value;

  @action
  Future<void> transferPlayer(
      String idPlayer, String currentTeam, int over, int currentPrice) async {
    inicialPricePlayer = filterPricePlayer(over);

    if (!checkPricePlayer && currentPrice == null) {
      success = false;
      changeError(
          'Valor abaixo do valor inicial do jogador: ${inicialPricePlayer.toString()}');
    } else if (inicialPricePlayer == 0) {
      success = false;
      changeError('Jogador nao pode ser contratado');
    } else if (currentPrice == null && currentTeam == null) {
      if (controllerTeam.team.patrimonio >= transferPrice) {
        success = true;
        currentTeam = controllerTeam.team.id;
        String status = 'negociando';

        loadingTransfer = true;
        await repositoryMarket.transferPlayerFree(
          idPlayer,
          currentTeam,
          transferPrice,
          status,
        );
        changeError('Agora sim!');
        getPlayers();
        loadingTransfer = false;
        transferPrice = 0;
        await controllerTeam.getTeam(controllerTeam.team.id);
      } else {
        success = false;
        changeError('Dinheiro insuficiente! Seu Liso');
      }
    } else {
      if (transferPrice <= currentPrice) {
        success = false;
        changeError(
            'Sua oferta tem que ser maior que: ${currentPrice.toString()}');
      } else {
        if (controllerTeam.team.patrimonio >= transferPrice) {
          success = true;
          String status = 'em diputa';
          loadingTransfer = true;
          await repositoryMarket.transferPlayerDisp(
            idPlayer,
            currentTeam,
            currentPrice,
            status,
            controllerTeam.team.id,
            transferPrice,
          );
          changeError('Entrou no Leilao');
          getPlayers();
          getDisp();
          loadingTransfer = false;
          transferPrice = 0;
          await controllerTeam.getTeam(controllerTeam.team.id);
        } else {
          success = false;
          changeError('Dinheiro insuficiente para disputar! Seu Liso!');
        }
      }
    }
  }

  //Mostrar card tela inicial do Mercado
  @observable
  bool loading = false;

  ObservableList<DisputaFinalModel> finalLista = ObservableList();

  @action
  Future getDisp() async {
    loading = true;

    List<DisputaModel> disputas = await repositoryMarket.catchDisputas();

    if (disputas.isEmpty) {
      loading = false;
    } else {
      for (DisputaModel disputa in disputas) {
        DisputaFinalModel lista = DisputaFinalModel();
        PlayerMarketModel playerDisp =
            await repositoryMarket.catchPlayerDisp(disputa.player);
        TeamMarkModel firstTeam =
            await repositoryMarket.catchTeamDisp(disputa.teams[0]);
        TeamMarkModel secondTeam =
            await repositoryMarket.catchTeamDisp(disputa.teams[1]);

        lista.valor = disputa.price;
        lista.namePlayer = playerDisp.name;
        lista.imagePlayer = playerDisp.image;
        lista.overPlayer = playerDisp.over;
        lista.positionPlayer = playerDisp.position;

        lista.fistTeamImage = firstTeam.image;
        lista.fistTeamName = firstTeam.name;

        lista.secondTeamImage = secondTeam.image;
        lista.secondTeamName = secondTeam.name;

        finalLista.add(lista);

        loading = false;
      }
    }
  }
}
