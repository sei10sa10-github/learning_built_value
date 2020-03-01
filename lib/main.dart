import 'package:buld_value_example/models/contact.dart';
import 'package:flutter/material.dart';

import 'models/serializers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Built Value',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Built Value Example'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var contact1 = Contact((b) => b
      ..id = 1
      ..fullName = 'Emily'
      ..isFriend = true
    );

    var contact2 = Contact((b) => b
      ..id = 1
      ..fullName = 'Emily'
      ..isFriend = true
    );

    var serialized = serializers.serialize(contact2);
    print('Serialized contact2');
    print(serialized);

    var deserialized = serializers.deserialize(serialized);
    print('Deserialized contact2');
    print(deserialized);

    if (deserialized == contact2) print('Deserialized is the same as $contact2');

    String _result;
    if (contact1 == contact2) {
      _result = 'Same';
    } else {
      _result = 'Not Same';
    }

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: Center(
          child: Text('contact 1 & contact 2 is\n$_result'),
        ),
      );
  }
}
