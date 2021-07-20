import 'package:flutter/material.dart';

double collapsableHeight = 0.0;
Color selected = Color(0xffffffff);
Color notSelected = Color(0xafffffff);
Color appBarBackground = Color(0x66191919);
Color openAppBarBackground = Color(0xaa191919);

class AppBarCustom extends StatefulWidget {
  @override
  _AppBarCustomState createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          AnimatedContainer(
            margin: EdgeInsets.only(top: 79),
            duration: Duration(milliseconds: 375),
            curve: Curves.ease,
            height: (width < 800) ? collapsableHeight : 0.0,
            width: double.infinity,
            color: openAppBarBackground,
            child: SingleChildScrollView(
              child: Column(
                children: navBarItems(context),
              ),
            ),
          ),
          Container(
            color: appBarBackground,
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'EvilCraft',
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Vollkorn'
                  ),
                ),
                LayoutBuilder(
                    builder: (context, constraints) {
                      if (width < 800) {
                        return NavBarButton(
                          onPressed: () {
                            if (mounted) {
                              setState(() {
                                if (collapsableHeight == 0)
                                  collapsableHeight =
                                      navBarItems(context).length * 60;
                                else if (navBarItems(context).length * 60 == 120)
                                  collapsableHeight = 0;
                              });
                            }
                          },
                        );
                      } else {
                        return Row(
                          children: navBarItems(context),
                        );
                      }
                    }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> navBarItems(context) {
  var _navBarItems = [
    NavBarItem(
        text: "Головна",
        onPressFunction: () {
          Navigator.popAndPushNamed(context, '/');
        }),
    NavBarItem(
        text: "Учасники",
        onPressFunction: () {
          Navigator.popAndPushNamed(context, '/players');
        }),
  ];
  return _navBarItems;
}

class NavBarItem extends StatefulWidget {
  final String text;
  final Function onPressFunction;

  NavBarItem({
    required this.text,
    required this.onPressFunction,
  });

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = notSelected;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () => widget.onPressFunction(),
          child: Container(
            height: 60,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              widget.text,
              style: TextStyle(fontSize: 16, color: color),
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarButton extends StatefulWidget {
  final Function onPressed;

  NavBarButton({required this.onPressed});

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xcfffffff),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {
            if (mounted) {
              setState(() {
                widget.onPressed();
              });
            }
          },
          child: Icon(
            Icons.menu,
            size: 30,
            color: Color(0xcfffffff),
          ),
        ),
      ),
    );
  }
}
