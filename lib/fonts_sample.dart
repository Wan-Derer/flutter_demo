/*
https://www.youtube.com/watch?v=EN-1oO8HK84&list=PL6lh8cTntlDiLlH_rHl5F0JOy_gRm_Wa4&index=10
 */

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const ScreenWidget());

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: 'Pacifico'),
      home: Scaffold(
        appBar: AppBar(title: const Text('Пример FONTS')),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Шрифт Pacifico',
                style: TextStyle(fontFamily: 'Pacifico', fontSize: 30),
              ),
              const Text(
                'Шрифт Comfortaa-Regular',
                style: TextStyle(fontFamily: 'Comfortaa', fontSize: 20),
              ),
              const Text(
                'Шрифт Comfortaa-Bold',
                style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize:
                20),
              ),
              Text(
                'Шрифт Google Font',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(fontStyle: FontStyle.italic, fontSize: 30)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
