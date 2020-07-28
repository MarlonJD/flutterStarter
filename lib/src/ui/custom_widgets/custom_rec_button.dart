import 'package:flutter/material.dart';
import 'package:domainchecker/src/resources/app_colors.dart';

class CustomRecButton extends StatelessWidget {
  final String text;

  CustomRecButton({key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        flex: 1,
        child: RaisedButton(
            color: AppColors.primaryColor,
            textColor: AppColors.white,
            child: Text(text),
            onPressed: () {}),
      ),
    ]);
  }
}
