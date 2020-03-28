import 'package:aog/widgets/loading-button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {

  var resul = "";
  Function reset;

  Success({
    @required this.resul,
    @required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            this.resul,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: "Big Shoulders Display",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          LoadButton(
            busy: false,
            invert: true,
            func: reset,
            text: "Calcular Novamente",
          ),
        ],
      ),
    );
  }
}
