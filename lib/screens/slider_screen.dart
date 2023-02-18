import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue1 = 0;
  double _sliderValue2 = 0;
  double _sliderValue3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider & Checks '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Slider(
              value: _sliderValue1,
              min: 0,
              max: 255, 
              activeColor: AppTheme.primary,
              onChanged: (value) {
                _sliderValue1 = value;
                setState(() {
                  
                });
              },
            ),
            Slider(
              value: _sliderValue2,
              min: 0,
              max: 255, 
              activeColor: AppTheme.primary,
              onChanged: (value) {
                _sliderValue2 = value;
                setState(() {
                  
                });
              },
            ),
            Slider(
              value: _sliderValue3,
              min: 0,
              max: 255, 
              activeColor: AppTheme.primary,
              onChanged: (value) {
                _sliderValue3 = value;
                setState(() {
                  
                });
              },
            ),
            Expanded(
              child: Container(
                color: Color.fromRGBO(_sliderValue1.toInt(),_sliderValue2.toInt(),_sliderValue3.toInt(), 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}