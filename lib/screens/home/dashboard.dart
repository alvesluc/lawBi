import 'package:flutter/material.dart';
import 'package:opus/screens/examples/lael.dart';
import 'package:opus/screens/examples/lucas.dart';
import 'package:opus/screens/examples/talles.dart';
import 'package:opus/utilities/screensize.dart';

class Dashboard extends StatefulWidget {
  final String email;
  Dashboard(this.email, {Key key}) : super(key: key);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF00506B),
            Color(0xFF026A9A),
            Color(0xFF015C7B),
          ],
          stops: [0.1, 0.4, 0.7],
        ),
      ),
      child: Center(
        child: Container(
          child: _buildLoginButton(),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Container(
      margin: EdgeInsets.only(
          left: SizeConfig.safeBlockHorizontal * 4,
          right: SizeConfig.safeBlockHorizontal * 4),
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          if (widget.email == "l.alves001@gmail.com") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Lucas()));
          } else if (widget.email == "talles.sanavria@gmail.com") {
            Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Talles()));
          } else if (widget.email == "lael_albuquerque@hotmail.com") {
            Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Lael()));

          }
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        child: Text(
          'SOLICITAR INFORMAÇÕES',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'BrandonText_Medium',
          ),
        ),
      ),
    );
  }
}
