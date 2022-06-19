import 'package:fifthpro_flutter/detils.dart';
import 'package:fifthpro_flutter/models/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const APPPro());
}

class APPPro extends StatefulWidget {
  const APPPro({Key? key}) : super(key: key);
  @override
  State<APPPro> createState() => _APPProState();
}

class _APPProState extends State<APPPro> {
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
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'بقالتي',
              style: TextStyle(fontSize: 30),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.list,
                  size: 40,
                ),
              ),
            ),
          ],
          // ignore: deprecated_member_use
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(251, 193, 184, 184),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ))),
                ListView.builder(
                    itemCount: products.length,
                    itemBuilder: ((context, index) => Cart_market(
                        itemindex: index,
                        product: products[index],
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Montag(
                                        montag: products[index],
                                      ))));
                        }))),
              ],
            ))
          ],
        ),
      ),
    ));
  }
}

class Cart_market extends StatelessWidget {
  const Cart_market({
    Key? key,
    required this.itemindex,
    required this.product,
    required Function this.press,
  }) : super(key: key);

  final int itemindex;
  final Products product;
  final press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Center(
        child: Container(
            margin: EdgeInsets.all(20),
            child: Stack(children: [
              Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: 700,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 0.5,
                          color: Color.fromARGB(255, 122, 104, 104),
                        )
                      ])),
              Positioned(
                  top: -10,
                  left: 35,
                  height: 300,
                  width: 300,
                  child: Image.asset(product.imags)),
              Positioned(
                  right: 100,
                  top: 50,
                  child: Column(children: [
                    Text(
                      product.title,
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      product.catrgory,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 196, 189, 119),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'السعر ${product.price}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        )),
                  ])),
            ])),
      ),
    );
  }
}
