import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;

  const CustomCardType2({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: AppTheme.primary,
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                imageUrl), //https://img.freepik.com/free-vector/hand-drawn-flat-design-mountain-landscape_52683-79195.jpg?w=2000'
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 200),
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

// ignore: camel_case_types
class CustomCardType2_1 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2_1({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: AppTheme.primary,
      elevation: 10,
      child: Column(
        children: [
          Image(
            image: NetworkImage(
                imageUrl), //https://img.freepik.com/free-vector/hand-drawn-flat-design-mountain-landscape_52683-79195.jpg?w=2000'
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          if (name != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(bottom: 10, top: 10, right: 15),
                child: Text(name ?? 'No Title'))
        ],
      ),
    );
  }
}
