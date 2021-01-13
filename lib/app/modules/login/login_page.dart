import 'package:cadu_fifa/app/modules/login/helpers/validators.dart';
import 'package:cadu_fifa/app/modules/login/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Entrar"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Observer(
          builder: (context) {
            return controller.loading
                ? CircularProgressIndicator()
                : Card(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Form(
                      key: formKey,
                      child: ListView(
                        padding: const EdgeInsets.all(16),
                        shrinkWrap: true,
                        children: [
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(hintText: 'E-mail'),
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            validator: (email) {
                              if (!emailValid(email)) {
                                return 'Email inválido';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            controller: passController,
                            decoration: InputDecoration(hintText: 'Senha'),
                            autocorrect: false,
                            obscureText: true,
                            validator: (pass) {
                              if (pass.isEmpty || pass.length < 6) {
                                return 'Senha invalida';
                              }
                              return null;
                            },
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: FlatButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              child: const Text('Esqueci minha senha'),
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            height: 50,
                            child: RaisedButton(
                              onPressed: () {
                                if (formKey.currentState.validate()) {
                                  controller.signIn(
                                    user: UserModel(
                                      email: emailController.text,
                                      password: passController.text,
                                    ),
                                    onFail: (e) {
                                      scaffoldKey.currentState.showSnackBar(
                                        SnackBar(
                                          content: Text('Falha ao entrar: $e'),
                                          backgroundColor: Colors.red,
                                        ),
                                      );
                                    },
                                    onSucess: () {},
                                  );
                                }
                              },
                              color: Theme.of(context).primaryColor,
                              textColor: Colors.white,
                              child: const Text(
                                'Entrar',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
