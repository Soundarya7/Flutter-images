import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(home:MyApp() ,));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  String _value="hello world";
  int _intvalue=0;
  
  void _onPressed(String value){
    setState(() {
      _value=value;
    });
  }
  void _onPressedTextButton(){
    setState(() {
      _value=DateTime.now().toString();
    });
  }
  void add(){
 setState(() {
      _intvalue++;
      _value = _intvalue.toString();
    });
  }
 void sub(){
 setState(() {
      _intvalue--;
      _value = _intvalue.toString();
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Buttons"),),body: Container(child: Column(children: [Text(_value),ElevatedButton(onPressed:(){_onPressed("i am a flutter student");}, child: Text("Elevated Button"))
    // ignore: sort_child_properties_last
    ,TextButton(onPressed: _onPressedTextButton, child: Text("Date and time"),style: TextButton.styleFrom(
        foregroundColor: Colors.pink,
      )),
   IconButton(icon:Icon(Icons.add),onPressed:add) ,IconButton(icon:Icon(Icons.remove),onPressed:sub)],),),);
  }
}

