import 'package:flutter/material.dart';
import 'package:inherited_widget/state_container.dart';
import 'myform.dart';
import 'user.dart';
import 'state_container.dart';

class HomeScreen extends StatefulWidget{
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>{
  User user;

  openForm(BuildContext context){
    Navigator.push(context, new MaterialPageRoute(
      fullscreenDialog: true,
      builder: (context){
        return new FormScreen();
      }),
    );
  }

  @override
  Widget build(BuildContext context){
    final container = StateContainer.of(context);
    user = container.user;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Inherited Widget Demo'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            user != null ? Text('Name:${user.name}') : Text("No Name"),
            SizedBox(height: 20.0,),
            RaisedButton(
              child: Text("Add Name"),
              onPressed: (){
                openForm(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}