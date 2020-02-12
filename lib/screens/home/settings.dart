import 'package:flutter/material.dart';
import 'package:opus/utilities/screensize.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Container(
        margin: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 2),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                "Versão: 0.0.1",
                style: TextStyle(fontFamily: 'Segoe_UI'),
              ),
            ),
            _buildSeparator(),
            ListTile(
              title: Text(
                "Última atualização: 12/02/2020",
                style: TextStyle(fontFamily: 'Segoe_UI'),
              ),
            ),
            _buildSeparator(),
          ],
        ),
      ),
    );
  }

  Widget _buildSeparator() {
    return Container(
        height: 1.0,
        color: Colors.grey[500],
        margin: EdgeInsets.only(
            top: SizeConfig.safeBlockVertical * 1,
            bottom: SizeConfig.safeBlockVertical * 1,
            left: SizeConfig.safeBlockHorizontal * 2));
  }
}
