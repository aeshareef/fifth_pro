import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'models/products.dart';

class Montag extends StatelessWidget {
  final Products montag;
  const Montag({
    Key? key,
    required this.montag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('ar', 'AE'), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        locale: Locale('ar', 'AE'),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 32, 142, 189),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 224, 206, 206),
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 40,
                color: Color.fromARGB(217, 19, 177, 220),
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: Text(
              'رجوع',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 700,
                  width: 780,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    color: Color.fromARGB(255, 224, 206, 206),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 600,
                          height: 500,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset(montag.imags),
                      ),
                      Positioned(
                          right: 50,
                          bottom: 0,
                          child: Text(
                            montag.title,
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          )),
                      Positioned(
                          right: 300,
                          bottom: 0,
                          child: Text(
                            " ${montag.price} ريال",
                            style: TextStyle(
                              fontSize: 40,
                              color: Color.fromARGB(255, 131, 113, 9),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Text(
                montag.des,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              )
            ],
          ),
        )));
  }
}
