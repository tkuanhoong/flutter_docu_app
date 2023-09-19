import 'package:flutter/material.dart';
import 'package:flutter_docu_app/ui/4.interactivity/favorite_widget.dart';

class BuildLayout extends StatelessWidget {
  const BuildLayout({super.key});
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          const FavoriteWidget()
        ],
      ),
    );
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(
            color: primaryColor, icon: Icons.phone, label: 'CALL'),
        _buildButtonColumn(
            color: primaryColor, icon: Icons.near_me, label: 'ROUTE'),
        _buildButtonColumn(
            color: primaryColor, icon: Icons.share, label: 'SHARE'),
      ],
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: const Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            'assets/images/post1.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }

  Column _buildButtonColumn(
      {required Color color, required IconData icon, required String label}) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          label,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}
