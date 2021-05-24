import 'package:flutter/material.dart';

class FlexibleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 100,
            child: Text('Item 1 - pretty big!'),
            color: Colors.red,
          ),
          // Expanded => same as Flexible + FlexFit.tight
          Flexible(
            // ratio of available space
            // default value 1
            flex: 2,
            // takes up the remaining space
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              child: Text('Item 1 - pretty big!'),
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 2,
            // only takes as much space as it needs
            // space it could take is left empty
            fit: FlexFit.loose,
            child: Container(
              height: 100,
              child: Text('Item 1 - pretty big!'),
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
