import 'package:flutter/material.dart';
import 'package:card_settings/card_settings.dart';

class Lucas extends StatefulWidget {
  @override
  _LucasState createState() => _LucasState();
}

class _LucasState extends State<Lucas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00506B),
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
      body: Container(
        color: Color(0xFF00506B),
        child: CardSettings(
          children: <Widget>[
            CardSettingsHeader(label: 'Informações'),
            CardSettingsText(
              label: 'ID',
              initialValue: '2020',
            ),
            CardSettingsText(
              label: 'Sigla Diario',
              initialValue: 'DJ',
            ),
            CardSettingsText(
              label: 'Data',
              initialValue: '20/10/2019',
            ),
            CardSettingsText(
              label: 'Disponibilização',
              initialValue: '12/02/2020',
            ),
            CardSettingsText(
              label: 'Nota',
              initialValue: 'Recurso',
            ),
            CardSettingsText(
              label: 'Processo',
              initialValue: '00000000-00.0000.0.00.0304',
            ),
            CardSettingsText(
              label: 'Orgão',
              initialValue: 'T3 - TERCEIRA TURMA',
            ),
            CardSettingsText(
              label: 'ID do Escritório',
              initialValue: '4',
            ),
            CardSettingsText(
              label: 'Esfera Diário',
              initialValue: 'Federal',
            ),
            CardSettingsText(
              label: 'Edição',
              initialValue: '6834-2001',
            ),
            CardSettingsText(
              label: 'Termo',
              initialValue: 'MOVIMENTAÇÃO',
            ),
            CardSettingsText(
              label: 'OAB',
              initialValue: '001/PB',
            ),
            CardSettingsText(
              label: 'Estado',
              initialValue: 'PB',
            ),
            CardSettingsText(
              label: 'Classificação',
              initialValue: 'ATIVO',
            ),
          ],
        ),
      ),
    );
  }
}
