import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:opus/screens/home/dashboard.dart';
import 'package:opus/screens/home/profile.dart';
import 'package:opus/screens/home/settings.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'chat.dart';

class Home extends StatefulWidget {
  final String email;
  Home(this.email, {Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<bool> _onBackButton() async {
    return AwesomeDialog(
        context: context,
        dialogType: DialogType.INFO,
        headerAnimationLoop: false,
        animType: AnimType.BOTTOMSLIDE,
        tittle: 'Deseja sair da plataforma?',
        desc: '',
        btnCancelText: "Não",
        btnCancelOnPress: () {
          return false;
        },
        btnOkText: "Sim",
        btnOkOnPress: () {
          Navigator.of(context).pop(true);
        }).show();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      Dashboard(widget.email),
      Chat(),
      UserProfile(),
      Settings(),
    ];
    return WillPopScope(
      onWillPop: _onBackButton,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF00506B),
          automaticallyImplyLeading: false,
          title: Text(
            "LawBi",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'BrandonText_Medium',
            ),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentIndex,
          showElevation: true,
          itemCornerRadius: 8,
          curve: Curves.easeInBack,
          onItemSelected: (index) => setState(() {
            currentIndex = index;
            print(index);
          }),
          items: [
            BottomNavyBarItem(
              inactiveColor: Colors.grey,
              icon: Icon(Icons.apps),
              title: Text('Home'),
              activeColor: Color(0xFF026A9A),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              inactiveColor: Colors.grey,
              icon: Icon(Icons.people),
              title: Text('Clientes'),
              activeColor: Color(0xFF026A9A),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              inactiveColor: Colors.grey,
              icon: Icon(Icons.notifications),
              title: Text(
                'Notificações',
              ),
              activeColor: Color(0xFF026A9A),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              inactiveColor: Colors.grey,
              icon: Icon(Icons.settings),
              title: Text('Configurações'),
              activeColor: Color(0xFF026A9A),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
