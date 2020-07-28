import 'package:domainchecker/src/ui/screens/home/bloc_example.dart';
import 'package:domainchecker/src/ui/screens/home/salon_screen.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:domainchecker/src/resources/app_colors.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime currentBackPressTime;
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _currentIndex;

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final List<Widget> _children = [
      SalonWidget(),
      ExampleBlocWidget(),
      SalonWidget(),
    ];

    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
            key: _scaffoldKey,
            drawer: GFDrawer(
              color: AppColors.subtitleColor,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                children: <Widget>[
                  SizedBox(height: size.height * .03),
                  ListTile(
                      leading: SizedBox(),
                      title: Text('MENU',
                          style: TextStyle(color: AppColors.darkModeBlack, fontWeight: FontWeight.w700)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      trailing: Icon(
                        Icons.close,
                        color: AppColors.darkModeBlack,
                      )),
                  SizedBox(height: size.height * .06),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: AppColors.darkModeBlack,
                    ),
                    title: Text('Kullanıcıdan Çıkış Yap',
                        style: TextStyle(color: AppColors.darkModeBlack)),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            appBar: GFAppBar(
              title: Text("STARTER APP"),
              centerTitle: true,
              elevation: 1.0,
              actions: <Widget>[
                GFIconButton(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  icon: Icon(
                    Icons.notifications_active,
                    color: AppColors.darkModeBlack,
                    size: 22,
                  ),
                  onPressed: () {},
                  type: GFButtonType.transparent,
                ),
              ],
            ),
            body: _children[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: AppColors.subtitleColor,
              selectedItemColor: AppColors.darkModeBlack,
              unselectedItemColor: AppColors.darkModeBlack.withOpacity(0.4),
              selectedFontSize: 10.0,
              unselectedFontSize: 10.0,
              onTap: onTabTapped, // new
              currentIndex: _currentIndex,
              type: BottomNavigationBarType.fixed,
              items: [
                new BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard),
                  title: Text('Tab 1'),
                ),
                new BottomNavigationBarItem(
                  icon: Icon(Icons.playlist_add_check),
                  title: Text('Tab 2'),
                ),
                new BottomNavigationBarItem(
                  icon: Icon(Icons.playlist_add_check),
                  title: Text('Tab 3'),
                ),
              ],
            )));
  }

  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Emin misiniz?'),
              content: Text('Uygulamadan çıkmak istiyor musunuz?'),
              actions: <Widget>[
                FlatButton(
                  child: Text('Hayır'),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
                FlatButton(
                  child: Text('Evet'),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                )
              ],
            );
          },
        ) ??
        false;
  }

  void onTabTapped(int index) {
    if (!this.mounted) return;
    setState(() {
      _currentIndex = index;
    });
  }
}
