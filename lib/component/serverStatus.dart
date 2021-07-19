import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

_ServerData _serverData = _ServerData(online: false, players: Map());

class _ServerData {
  final bool online;
  final Map players;

  _ServerData({required this.online, required this.players});

  factory _ServerData.fromJson(Map<String, dynamic> json) {
    var obj = json['players'];

    return _ServerData(online: json['online'], players: new Map.from(obj));
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
      _playersOnline += "гравеців";
  }
  return _playersOnline;
}
