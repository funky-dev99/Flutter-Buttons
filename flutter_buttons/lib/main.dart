import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPressed = false;
 // Initialize isPressed to false
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Buttons with Different Styles'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Background color
                onPrimary: Colors.white, // Text Color
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {},
              child: Text('Elevated Button'),
            ),

            TextButton.icon(
              icon: Icon(Icons.info, color: Colors.blue),
              label: Text('Text Button with Icon', style: TextStyle(color: Colors.blue)),
              onPressed: () {},
            ),


            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.blueAccent, width: 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {},
              child: Text('Outlined Button'),
            ),


            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent, // Make the button's background transparent
                  splashFactory: InkRipple.splashFactory, // Splash color
                ),
                child: Text('Gradient Button', style: TextStyle(color: Colors.white)),
              ),
            ),

            Tooltip(
              message: 'Icon Button',
              child: IconButton(
                icon: Icon(Icons.star, color: Colors.amber),
                onPressed: () {},
              ),
            ),


            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(isPressed ? 50 : 8),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => setState(() => isPressed = !isPressed),
                  child: Center(
                    child: Text(
                      'Animated Button',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),

            ElevatedButton.icon(
              icon: Icon(Icons.send),
              label: Text('Send'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                onPrimary: Colors.white,
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                primary: Colors.teal,
              ),
              onPressed: () {},
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                side: BorderSide(color: Colors.indigo, width: 2),
              ),
              onPressed: () {},
              child: Text(
                'Custom Padding',
                style: TextStyle(fontSize: 18, color: Colors.indigo),
              ),
            ),

            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.amber,
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text('Button 10'),
            ),
          ],
        ),
      ),
    );
  }
}
