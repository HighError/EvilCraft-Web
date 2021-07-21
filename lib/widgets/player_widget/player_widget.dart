import 'package:flutter/material.dart';

class PlayerWidget extends StatelessWidget {
  final String nickname;
  final Color colorBorder;

  const PlayerWidget(
      {Key? key, required this.nickname, this.colorBorder = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: colorBorder,
          ),
          borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(10),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/players/$nickname.png',
                width: constraints.maxWidth * 0.5,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                nickname,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ],
          );
        },
      ),
    );
  }
}
