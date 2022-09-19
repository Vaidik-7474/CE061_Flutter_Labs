/*
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
// home is property and after : is its value widget.
// Scaffold is widgets built in flutter sdk..Scaffold is one type of layout manager..
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
// const test1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ICON WIDGET APP'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
          child: Image(
/*
//lab7_1 : INSERTING NETWORK IMAGE

image: NetworkImage('https://encrypted-
tbn0.gstatic.com/images?q=tbn:ANd9GcQL9pMnxE0SskmvGHS3G-
vlCUiN0TZHUcy931q7xFWE&s'),

*/
/*
//lab7_2 : AssetImage :- to use images from project packages
image: AssetImage('assets/dog3.jpg'),
*/
//lab7_2 : AssetImage :- to use images from sub directory of project packages
        image: AssetImage('assets/sub_assets/dog.png'),
      )

/*
Text(
'HELLO DDU',
style: TextStyle(
fontSize: 24.0,
fontWeight: FontWeight.bold,
letterSpacing: 2.0,
color: Colors.grey[600],
fontFamily: 'Aboreto'
),
),
*/
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // must required property...
// making change at here to test hot reloading..click --> click me---> Click and ctrl + s
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

*/


//------------------------------------------------------------------------------------------------------------------------------


import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
// home is property and after : is its value widget.
// Scaffold is widgets built in flutter sdk..Scaffold is one type of layout manager..
    home: HomeScreen(),
));

// making your own custom stateless widget....
// used in Hot reload and also useful in reuse...DRY feature
class HomeScreen extends StatelessWidget {
// const test1({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(
                    'BUTTONS WIDGET APP'),
                centerTitle: true,
                backgroundColor: Colors.red[600],
            ),
            body: Center(
                child: ElevatedButton(
                    child: Text('Button'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple[800],
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(
                            fontSize: 40,

                            fontWeight: FontWeight.bold)),

                ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {}, // must required property...
// making change at here to test hot reloading..click --> click me---> Click and ctrl + s
            child: Text('Click'),
            backgroundColor: Colors.red[600],
        ),
        );
    }
}
