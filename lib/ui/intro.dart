import 'package:flutter/material.dart';
import 'package:fossa_septica/ui/home2.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';



class Intro extends StatefulWidget {


  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 3,
        backgroundColor: Colors.white,
        navigateAfterSeconds: Fossa_Septica2(),
        loaderColor: Colors.transparent,
      ),
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Container(    
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.width * 0.45,      
                decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assets/logomarca-bordas-circ.png" )),
              ),
          )),
          ],
        ),
      ),
    ],
  );
  }
}
