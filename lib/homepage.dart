import 'package:flutter/material.dart';

class musicbox extends StatefulWidget {
  const musicbox({super.key});

  @override
  State<musicbox> createState() => _musicboxState();
}

class _musicboxState extends State<musicbox> {
  double _margin = 0;
  Color _color = Colors.red;
  double _width = 250;
  double _opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedContainer(
          duration: Duration(seconds:2),
      margin: EdgeInsets.all(_margin),
      width: _width,
      color: _color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
             child: Text('Animate Margin'),
            onPressed: () => setState(() 
              => _margin = 70
            ),
             ),
             ElevatedButton(
             child: Text('Animate Color'),
            onPressed: () => setState(() 
              => _color = Colors.orange
            ),
             ),
             ElevatedButton(
             child: Text('Animate Width'),
            onPressed: () => setState(() 
              => _width = 320
            ),
             ),
             ElevatedButton(
             child: Text('Animate Opacity'),
            onPressed: () => setState(() 
              => _opacity = 0
            ),
             ),
             AnimatedOpacity(
              opacity: _opacity, 
              duration: Duration(seconds: 4),
              child: Text('Wanna See A Magic Click On the Upper Button',
              style: TextStyle(color: Colors.black),
              ),

              ),
        ],
      )
    )
    );
  }
}
