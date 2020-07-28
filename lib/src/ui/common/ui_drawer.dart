import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:domainchecker/src/resources/app_colors.dart';

class UiDrawer extends StatelessWidget {
  UiDrawer({key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GFDrawer(
      color: AppColors.darkModeBlack,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        children: <Widget>[
          SizedBox(height: size.height * .03),
          ListTile(
              leading: SizedBox(),
              title: Text('MENU', style: TextStyle(color: AppColors.white)),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: Icon(
                Icons.close,
                color: AppColors.white,
              )),
          SizedBox(height: size.height * .06),
          ListTile(
            leading: Icon(
              Icons.home,
              color: AppColors.white,
            ),
            title: Text('Anasayfa', style: TextStyle(color: AppColors.white)),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
