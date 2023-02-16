import 'package:flutter/material.dart';

import '../Widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2_1(
            name: 'Paisaje 1',
            imageUrl:
                'https://img.freepik.com/free-vector/hand-drawn-flat-design-mountain-landscape_52683-79195.jpg?w=2000',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2_1(
            imageUrl:
                'https://images.squarespace-cdn.com/content/v1/59523d5c4c8b031b6d9dcb5b/1645865436351-NF1WX4AHJUE43OZ3GJCY/_S6A1420-Edit-Edit.jpg?format=2500w',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2_1(
            imageUrl:
                'https://mymodernmet.com/wp/wp-content/uploads/2020/02/international-landscape-photographer-of-the-year-thumbnail.jpg',
          )
        ],
      ),
    );
  }
}
