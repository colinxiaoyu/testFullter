import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../shared/size_fit.dart';

import './extension/double_extension.dart';
import './extension/int_extension.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

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
  @override
  Widget build(BuildContext context) {
    HYSizeFit.initialize(context);

    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
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
            ))
        //  GridView.count(
        //     // Create a grid with 2 columns. If you change the scrollDirection to
        //     // horizontal, this would produce 2 rows.
        //     crossAxisCount: 2,
        //     // Generate 100 Widgets that display their index in the List
        //     children: List.generate(100, (index) {
        //       return Center(
        //         child: Text(
        //           'Item $index',
        //         ),
        //       );
        //     }),
        //   ),
        );
  }
}
