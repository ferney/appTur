import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _launched;
  //String _phone = '';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  /* Future<void> _launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewWithJavaScript(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewWithDomStorage(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableDomStorage: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }*/

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    //const String toLaunch = 'https://www.cylog.org/headers/';
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Text(
            'HOTELES\nGUIAS TURÍSTICOS',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            textAlign: TextAlign.center,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '\nHotel La Casona',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3167575576');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://api.whatsapp.com/send/?phone=573167575576&text&app_absent=0');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/whatsapp_109861.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.facebook.com/sabor.santandereano55');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/facebook_109862.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.instagram.com/hotellacasonamogotes/');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/instagam_109863.png',
                ),
              ),
              Text(
                '\nHotel Casa Don Corzo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3164718484');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3107720845');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.instagram.com/hotelcasadoncorzo/');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/instagam_109863.png',
                ),
              ),
              Text(
                '\nHotel El Paraíso Mogotano',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3144515599');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              Text(
                '\nHotel Cecilia Rodriguez',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3132783264');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),

              /*

              */
              Text(
                '\nGuía La Mochila Viajera',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3114657564');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.facebook.com/Lamochilaviajera-101537724844134');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/facebook_109862.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.instagram.com/lamochilaviajera20/');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/instagam_109863.png',
                ),
              ),
              Text(
                '\nGuía La Cueva Del Guácharo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3162738109');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              Text(
                '\nFinca la Vega',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3154512635');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://api.whatsapp.com/send?phone=573154512635');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/whatsapp_109861.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.facebook.com/Finca-la-Vega-Vereda-Flores-105164401437417');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/facebook_109862.png',
                ),
              ),
              Text(
                '\nGuía Turismo Por Mogotes',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3213812433');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              Text(
                '\nGuía Turismo Mogotano',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3134763644');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.facebook.com/turismomogotano/');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/facebook_109862.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.instagram.com/elvalle.sagrado/');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/instagam_109863.png',
                ),
              ),
              Text(
                '\nGuía La Cabaña De Luis',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3176810787');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.facebook.com/Lacaba%C3%B1adeluis_mogotes-120405939869933');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/facebook_109862.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.instagram.com/lacabanadeluis_mogotes/');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/instagam_109863.png',
                ),
              ),
              Text(
                '\nGuía Ricardo Díaz',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3209822372');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              const Padding(padding: EdgeInsets.all(16.0)),
              FutureBuilder<void>(future: _launched, builder: _launchStatus),
            ],
          ),

          /*


          */

          Text(
            'RESTAURANTES',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            textAlign: TextAlign.center,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '\nLa Casona',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3167575576');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://api.whatsapp.com/send/?phone=573167575576&text&app_absent=0');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/whatsapp_109861.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.facebook.com/sabor.santandereano55');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/facebook_109862.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.instagram.com/hotellacasonamogotes/');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/instagam_109863.png',
                ),
              ),
              Text(
                '\nSabrosuras, Resto-Bar',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3134418852');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              Text(
                '\nEl Buen Sazón',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3212444966');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.facebook.com/Restaurante-El-Buen-Saz%C3%B3n-833953010066776/');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/facebook_109862.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.instagram.com/rest_elbuen_sazon/');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/instagam_109863.png',
                ),
              ),
              Text(
                '\nLeños',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3134493975');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              Text(
                '\nEduarDog\nEstación de servicios SANTAFE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3224086642');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://api.whatsapp.com/send?phone=573188435986');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/whatsapp_109861.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.facebook.com/EduardogMogotes/');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/facebook_109862.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.instagram.com/eduardog_mogotes/');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/instagam_109863.png',
                ),
              ),
              Text(
                '\nFrankfurt Burger\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _makePhoneCall('tel:3185884618');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/812/PNG/48/phone_icon-icons.com_66151.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.facebook.com/frankfurtburger');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/facebook_109862.png',
                ),
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowser(
                      'https://www.instagram.com/frankfurt_burger/');
                }),
                child: Image.network(
                  'https://icon-icons.com/icons2/1645/PNG/48/instagam_109863.png',
                ),
              ),
              const Padding(padding: EdgeInsets.all(16.0)),
              FutureBuilder<void>(future: _launched, builder: _launchStatus),
            ],
          ),
        ],
      ),
    );
  }
}
