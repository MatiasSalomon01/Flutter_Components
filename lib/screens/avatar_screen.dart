import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              //child: Text('MS'),
              backgroundColor: Colors.indigo,
              maxRadius: 20,
              backgroundImage: NetworkImage(
                  'https://media.a24.com/p/f3cf0543842f65a00f1b74fbf9b439c4/adjuntos/296/imagenes/008/738/0008738047/1200x675/smart/netflix-walter-whitepng.png'),
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 200,
        backgroundImage: NetworkImage(
            'https://media.a24.com/p/f3cf0543842f65a00f1b74fbf9b439c4/adjuntos/296/imagenes/008/738/0008738047/1200x675/smart/netflix-walter-whitepng.png'),
      )),
    );
  }
}
