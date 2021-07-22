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
      child: Column(
        children: [
          TitleWidget(title: 'Команди та права'),
          SizedBox(height: 25),
          Container(
            height: 30,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('A - Player'),
                Text('B - VIP', style: TextStyle(color: Colors.yellow)),
                Text('C - Premium', style: TextStyle(color: Colors.yellow)),
                Text('D - Premium+', style: TextStyle(color: Colors.yellow)),
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Множник опиту', style: TextStyle(fontSize: 20),),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Player - x1'),
                    Text('VIP - x1.5', style: TextStyle(color: Colors.yellow)),
                    Text('Premium - x2', style: TextStyle(color: Colors.yellow)),
                    Text('Premium+ - x3', style: TextStyle(color: Colors.yellow)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          ScreenTypeLayout(
              desktop: permissionTable(permissionsList, 15),
              tablet: permissionTable(permissionsList, 11),
              mobile: permissionTable(permissionsList, 7)),
        ],
      ),
    );
  }
}
