import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(color: Colors.blue, icon: Icons.widgets, text: 'General'),
          _SingleCard(
              color: Colors.deepPurple,
              icon: Icons.bus_alert_rounded,
              text: 'Transport')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.pink, icon: Icons.shopping_bag, text: 'Shopping'),
          _SingleCard(color: Colors.orange, icon: Icons.note_add, text: 'Bill')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.indigoAccent,
              icon: Icons.movie_rounded,
              text: 'Entertamient'),
          _SingleCard(
              color: Colors.green,
              icon: Icons.nightlight_round_outlined,
              text: 'Grocery')
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, color: Colors.white),
            radius: 25,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          )
        ],
      ),
    );
  }
}
