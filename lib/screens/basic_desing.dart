import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //image
          const Image(image: AssetImage('assets/japan.jpg')),
          //title
          const Title(),
          //Bottom seccion
          const BottomSeccion(),
          //Description
          Container(
            padding: const EdgeInsets.all(30),
            child: const Text(
                'Voluptate deserunt duis consectetur in. Adipisicing et pariatur sunt excepteur culpa adipisicing consequat. Veniam qui laborum ex officia irure veniam amet. Anim do consequat proident sint amet ex reprehenderit nostrud culpa. Do ex amet adipisicing eu nulla nisi enim excepteur proident non reprehenderit dolor. Consequat commodo culpa nostrud elit. Do aliquip tempor adipisicing ut officia dolore. In fugiat est deserunt nostrud aute laborum.'),
          )
        ],
      ),
    );
  }
}

class BottomSeccion extends StatelessWidget {
  const BottomSeccion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomBottom(
            icon: Icons.call,
            name: 'CALL',
          ),
          CustomBottom(
            icon: Icons.navigation_rounded,
            name: 'ROUTE',
          ),
          CustomBottom(
            icon: Icons.share,
            name: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomBottom extends StatelessWidget {
  final IconData icon;
  final String name;
  const CustomBottom({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.lightBlue),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.lightBlue),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            Text(
              'Osaka Japan, Japan Japan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Voluptate sint nulla sint nulla sint nulla.',
                style: TextStyle(
                  color: Colors.black45,
                ))
          ]),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('50'),
        ],
      ),
    );
  }
}
