import 'package:evilcraft_web/view/permissions/permissions_list.dart';
import 'package:evilcraft_web/widgets/permissions_table/permissions_table.dart';
import 'package:evilcraft_web/widgets/title/title.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PermissionsView extends StatelessWidget {
  const PermissionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          TitleWidget(title: 'Команди та права'),
          SizedBox(height: 25),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 150,
                width: 200,
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Умовні позначення',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text('A - Player',
                        style: TextStyle(color: Color(0xFF55FF55))),
                    Text('B - VIP', style: TextStyle(color: Color(0xFFFFFF55))),
                    Text('C - Premium',
                        style: TextStyle(color: Color(0xFFFF5555))),
                    Text('D - Premium+',
                        style: TextStyle(color: Color(0xFFFF55FF))),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 200,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Множник опиту',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text('Player - x1',
                        style: TextStyle(color: Color(0xFF55FF55))),
                    Text('VIP - x1.5',
                        style: TextStyle(color: Color(0xFFFFFF55))),
                    Text('Premium - x2',
                        style: TextStyle(color: Color(0xFFFF5555))),
                    Text('Premium+ - x3',
                        style: TextStyle(color: Color(0xFFFF55FF))),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          ScreenTypeLayout(
              desktop: permissionTable(permissionsList, 13),
              tablet: permissionTable(permissionsList, 9),
              mobile: permissionTable(permissionsList, 5)),
        ],
      ),
    );
  }
}
