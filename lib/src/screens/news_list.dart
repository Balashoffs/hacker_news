import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top news!'),
      ),
      body: buildList(),
    );
  }

  Widget buildList() {
    return ListView.builder(
      itemCount: 1000,
      itemBuilder: (contex, int index){
        return FutureBuilder(
          future: getFuture(),
          builder: (contex, snapshot){
            return Container(
              height: 80,
              child: snapshot.hasData
                ? Text('Get $index')
                : Text("Does not get $index"),
            );
          },
        );
      },
    );
  }

  getFuture() {
    return Future.delayed(
      Duration(seconds: 2),
      ()=> 'HI',
    );
  }
}