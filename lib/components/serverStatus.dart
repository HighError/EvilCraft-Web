import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

_ServerData _serverData =
    _ServerData(online: false, players: Map(), version: "");

class _ServerData {
  final bool online;
  final Map players;
  final String version;

  _ServerData(
      {required this.online, required this.players, required this.version});

  factory _ServerData.fromJson(Map<String, dynamic> json) {
    var playersObj = json['players'];

    if (json['online']) {
      return _ServerData(
          online: json['online'],
          players: new Map.from(playersObj),
          version: json['version']);
    } else {
      return _ServerData(
          online: json['online'], players: new Map(), version: '');
    }
  }
}

Future<void> _callApi() async {
  var response =
      await http.get(Uri.parse('https://api.mcsrvstat.us/2/134.209.230.148'));

  var body = response.body;
  _serverData = _ServerData.fromJson(jsonDecode(body));
}

Future<String> getServerOnline() async {
  await _callApi();
  String _playersOnline = "";
  if (!_serverData.online) {
    _playersOnline = "Сервер оффлайн!";
  } else {
    _playersOnline =
        "На сервері зараз ${_serverData.players["online"]}/${_serverData.players["max"]} ";
    if (_serverData.players["online"] == 1)
      _playersOnline += "гравець";
    else if (_serverData.players["online"] >= 2 &&
        _serverData.players["online"] <= 4)
      _playersOnline += "гравці";
    else
      _playersOnline += "гравців";
  }
  return _playersOnline;
}

Future<String> getServerVersion() async =>
    "Версія серверу: ${_serverData.version}";
