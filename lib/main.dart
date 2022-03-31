import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../shared/size_fit.dart';

import './extension/double_extension.dart';
import './extension/int_extension.dart';
import 'dart:developer' as developer;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';
    developer.log('log me', name: 'my.app.category');

    developer.log('log me 1', name: 'my.other.category');
    developer.log('log me 2', name: 'my.other.category');

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  Widget _buildStack() {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        SvgPicture.asset(
          'assets/icons/sound_file.svg',
          width: 100,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.black45,
          ),
          child: const Text(
            'Mia B',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCard() {
    return SizedBox(
      child: Card(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              title: const Text(
                '1625 Main Street',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('My City, CA 99984'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: const Text('costa@example.com'),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    HYSizeFit.initialize(context);

    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );
    final red = Colors.red;
    final containExample = UnconstrainedBox(
      child: LimitedBox(
        maxWidth: 100,
        child: Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
        ),
      ),
    );

    final ratings = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          stars,
          Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 30.rpx,
            ),
          ),
        ],
      ),
    );

    var avstor = _buildStack();

    var cards = _buildCard();

    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                    child: Container(
                  color: Colors.redAccent,
                  child: Column(
                    children: const [
                      Text('Hello!'),
                      Text('Goodbye!'),
                    ],
                  ),
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('assets/icons/menu_dashbord.svg'),
                    SvgPicture.asset('assets/icons/Documents.svg'),
                    SvgPicture.asset('assets/icons/sound_file.svg'),
                    Center(
                      child: Text(
                        '以 750 作为适配',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 32.rpx,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
                containExample,
                avstor,
                stars,
                ratings,
                cards,
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 70,
                    minHeight: 70,
                    maxWidth: 150,
                    maxHeight: 150,
                  ),
                  child: Container(color: Colors.red, width: 10, height: 10),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(100, (index) {
                      return Center(
                        child: Text(
                          'Item $index',
                        ),
                      );
                    }),
                  ),
                )
              ],
            )));
  }
}
