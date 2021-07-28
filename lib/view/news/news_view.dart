import 'package:evilcraft_web/widgets/h2/h2.dart';
import 'package:evilcraft_web/widgets/title/title.dart';
import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            TitleWidget(title: 'Оновлення 1.1'),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H2Widget(title: 'Виправлення'),
                SizedBox(
                  height: 5,
                ),
                Text('  Тепер місце респавну не скидується після перезаходу'),
                SizedBox(
                  height: 20,
                ),
                H2Widget(title: 'Зміни'),
                SizedBox(
                  height: 5,
                ),
                Text('  Тепер тотем бессмертя спасає від падіння в пустоту'),
                Text(
                    '  Тотем тепер має затримку перед повторним використанням 10 секунд'),
                Text('  Тотем тепер не обов\'язково тримати в руках'),
                Text(
                    '  Нагороди тепер видаються раз в 1, 4 та 12 годин по 1, 2 та 3 монети'),
                SizedBox(
                  height: 20,
                ),
                H2Widget(title: 'Добавлено'),
                SizedBox(
                  height: 5,
                ),
                Text('  Тепер за допомогою команди можна крастись і лежати'),
                SizedBox(
                  height: 20,
                ),
                H2Widget(title: 'Зміни в командах'),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '  Змінено деякі команди, детальніше про команди ви можете дізнатись в розділі Права'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
