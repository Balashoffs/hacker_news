import 'package:flutter/material.dart';

class LoadingContainer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: buildTile(),
          subtitle: buildTile(),
        ),
        Divider(
          height: 10.0,
        ),
      ],
    );
  }

  Widget buildTile(){
    return Container(
      color: Colors.grey[250],
      height: 24.0,
      width: 150.0,
      margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
    );
  }
}