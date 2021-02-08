import 'package:cadu_fifa/app/modules/home/submodules/market/market_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DialogSuccess extends StatefulWidget {
  @override
  _DialogSuccessState createState() => _DialogSuccessState();
}

class _DialogSuccessState extends State<DialogSuccess> {
  MarketController controller = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 90,
            bottom: 16,
            left: 16,
            right: 16,
          ),
          margin: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(17),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Observer(builder: (context) {
                return controller.loadingTransfer
                    ? Center(child: CircularProgressIndicator())
                    : Text(
                        controller.error,
                        style: controller.success
                            ? TextStyle(fontSize: 22, color: Colors.green)
                            : TextStyle(fontSize: 22, color: Colors.red),
                      );
              }),
              SizedBox(height: 24),
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK!'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: 0,
            left: 16,
            right: 16,
            child: Observer(builder: (context) {
              return controller.success
                  ? CircleAvatar(
                      child: Icon(
                        Icons.done_outline,
                        color: Colors.green,
                        size: 50,
                      ),
                      backgroundColor: Colors.white,
                      radius: 50,
                    )
                  : CircleAvatar(
                      child: Icon(
                        Icons.block,
                        color: Colors.red,
                        size: 50,
                      ),
                      backgroundColor: Colors.white,
                      radius: 50,
                    );
            })),
      ],
    );
  }
}
