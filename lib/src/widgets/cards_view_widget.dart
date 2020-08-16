import 'package:flutter/material.dart';
import 'package:ideas_app_ui/src/widgets/card_widget.dart';

class CardsView extends StatelessWidget {
  const CardsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric( horizontal: 20.0 ),
      child: Column(
        children: <Widget>[
          card('Brunch party yogurt parfaits', 'assets/imag1.jpg','Yogurt Parfaits are the best addition to your brunch party at home. They are easy to make and can decorated your house nicely'),
          SizedBox(height: 10.0),
          card('Night table organizer', 'assets/imag2.jpg','This night table incorporates small compartments to allow the division of different items. Wood and ceramic is used to create the prefect addition'),
          SizedBox(height: 10.0),
          card('Brunch party yogurt parfaits', 'assets/imag1.jpg','Yogurt Parfaits are the best addition to your brunch party at home. They are easy to make and can decorated your house nicely'),
          SizedBox(height: 10.0),
          card('Night table organizer', 'assets/imag2.jpg','This night table incorporates small compartments to allow the division of different items. Wood and ceramic is used to create the prefect addition'),
          
        ],
      ),
    );
  }
}