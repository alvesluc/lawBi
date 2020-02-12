// To parse this JSON data, do
//
//     final importaNotas = importaNotasFromJson(jsonString);

import 'dart:convert';

ImportaNotas importaNotasFromJson(String str) => ImportaNotas.fromJson(json.decode(str));

String importaNotasToJson(ImportaNotas data) => json.encode(data.toJson());

class ImportaNotas {
    bool sucesso;
    ImportaNotasData data;

    ImportaNotas({
        this.sucesso,
        this.data,
    });

    factory ImportaNotas.fromJson(Map<String, dynamic> json) => ImportaNotas(
        sucesso: json["sucesso"],
        data: ImportaNotasData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "sucesso": sucesso,
        "data": data.toJson(),
    };
}

class ImportaNotasData {
    int records;
    DataData data;

    ImportaNotasData({
        this.records,
        this.data,
    });

    factory ImportaNotasData.fromJson(Map<String, dynamic> json) => ImportaNotasData(
        records: json["records"],
        data: DataData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "records": records,
        "data": data.toJson(),
    };
}

class DataData {
    String id;
    String siglaDiario;
    String data;
    String dataDisponibilizacao;
    String nota;
    String processo;
    String orgao;
    String escritorioid;
    String esferaDiario;
    String numEdicao;
    String termoPesquisado;
    String oab;
    String estado;
    String classificacao;

    DataData({
        this.id,
        this.siglaDiario,
        this.data,
        this.dataDisponibilizacao,
        this.nota,
        this.processo,
        this.orgao,
        this.escritorioid,
        this.esferaDiario,
        this.numEdicao,
        this.termoPesquisado,
        this.oab,
        this.estado,
        this.classificacao,
    });

    factory DataData.fromJson(Map<String, dynamic> json) => DataData(
        id: json["id"],
        siglaDiario: json["siglaDiario"],
        data: json["data"],
        dataDisponibilizacao: json["dataDisponibilizacao"],
        nota: json["nota"],
        processo: json["processo"],
        orgao: json["orgao"],
        escritorioid: json["escritorioid"],
        esferaDiario: json["esferaDiario"],
        numEdicao: json["numEdicao"],
        termoPesquisado: json["termoPesquisado"],
        oab: json["oab"],
        estado: json["estado"],
        classificacao: json["classificacao"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "siglaDiario": siglaDiario,
        "data": data,
        "dataDisponibilizacao": dataDisponibilizacao,
        "nota": nota,
        "processo": processo,
        "orgao": orgao,
        "escritorioid": escritorioid,
        "esferaDiario": esferaDiario,
        "numEdicao": numEdicao,
        "termoPesquisado": termoPesquisado,
        "oab": oab,
        "estado": estado,
        "classificacao": classificacao,
    };
}
