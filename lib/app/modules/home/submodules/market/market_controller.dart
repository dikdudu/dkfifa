import 'package:cadu_fifa/app/shared/players/models/player_model.dart';
import 'package:cadu_fifa/app/shared/players/player_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'market_controller.g.dart';

@Injectable()
class MarketController = _MarketControllerBase with _$MarketController;

abstract class _MarketControllerBase with Store {
  PlayerRepository repository = Modular.get();

  @observable
  List<PlayerModel> allPlayers = [];

  Future getPlayers() async {
    allPlayers = await repository.catchAllPlayers();
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

    getPlayers();
    return filteredPlayers;
  }
}
