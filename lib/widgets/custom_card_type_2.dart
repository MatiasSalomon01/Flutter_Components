import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: AppTheme.primary,
      elevation: 10,
      child: Column(
        children: [
          const FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://img.freepik.com/free-vector/hand-drawn-flat-design-mountain-landscape_52683-79195.jpg?w=2000'),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 200),
          ),
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(bottom: 10, top: 10, right: 15),
              child: const Text('Un Paisaje'))
        ],
      ),
    );
  }
}
