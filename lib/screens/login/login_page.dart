import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:groovin_material_icons/groovin_material_icons.dart';
import 'package:opus/screens/home/home.dart';
import 'package:opus/utilities/constants_style.dart';
import 'package:opus/utilities/screensize.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Widget _buildEmailFormField() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email',
            style: kLabelStyle,
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            height: 60.0,
            child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'BrandonText_Regular',
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                hintText: 'Informe seu e-mail',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ],
      );
    }

    Widget _buildPasswordFormField() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Senha',
            style: kLabelStyle,
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            height: 60.0,
            child: TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans',
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.white,
                ),
                hintText: 'Informe sua senha',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ],
      );
    }

    Widget _buildForgotPasswordButton() {
      return Container(
        alignment: Alignment.centerRight,
        child: FlatButton(
          onPressed: () => print('Apertou o botão de esqueceu senha.'),
          padding: EdgeInsets.only(right: 0.0),
          child: Text(
            'Esqueceu sua senha?',
            style: kLabelStyle,
          ),
        ),
      );
    }

    Widget _buildLoginButton() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: RaisedButton(
          elevation: 5.0,
          onPressed: () {
            _navigateHomePage(context);
          },
          padding: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          child: Text(
            'LOGIN',
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

    Widget _buildRegisterButton() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: RaisedButton(
          elevation: 5.0,
          onPressed: () {},
          padding: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color(0xFF527DAA),
          child: Text(
            'REGISTRAR-SE',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'BrandonText_Medium',
            ),
          ),
        ),
      );
    }

    Widget _buildRegisterText() {
      return Column(
        children: <Widget>[
          Text(
            '- OU -',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }

    Container _buildSocialMediaButtons(IconData icon, Color iconColor) {
      return Container(
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(15.0),
          child: Icon(icon, color: iconColor),
        ),
        height: 46.0,
        width: 46.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2)),
      );
    }

    Widget _buildSocialBtnRow() {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildSocialMediaButtons(GroovinMaterialIcons.google, Colors.red),
            SizedBox(
              width: 16.0,
            ),
            _buildSocialMediaButtons(
                GroovinMaterialIcons.facebook_box, Colors.blue),
            SizedBox(
              width: 16.0,
            ),
            _buildSocialMediaButtons(
                GroovinMaterialIcons.linkedin_box, Colors.lightBlueAccent),
          ],
        ),
      );
    }

    Widget _buildSignupBtn() {
      return GestureDetector(
        onTap: () => print('Botão de cadastro apertado'),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Não tem conta? Cadastre-se',
                style: kLabelStyle,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
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
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //_logo(),
                      Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.safeBlockVertical * 6,
                          bottom: SizeConfig.safeBlockVertical * 3,
                        ),
                        child: Text(
                          "LawBI",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'BrandonText_Regular',
                              fontSize: 45),
                        ),
                      ),
                      _buildEmailFormField(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildPasswordFormField(),
                      _buildForgotPasswordButton(),
                      _buildLoginButton(),
                      _buildRegisterText(),
                      _buildRegisterButton(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 2),
      height: SizeConfig.safeBlockVertical * 25,
      width: SizeConfig.safeBlockHorizontal * 80,
      /*padding: EdgeInsets.fromLTRB(
          SizeConfig.safeBlockHorizontal * 5,
          SizeConfig.safeBlockVertical * 5,
          SizeConfig.safeBlockHorizontal * 5,
          SizeConfig.safeBlockVertical * 5),*/
      child: Image.asset('assets/images/logo_transparent.png'),
    );
  }

  _navigateHomePage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home(_emailController.text)));
  }
}
