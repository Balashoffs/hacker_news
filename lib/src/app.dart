import 'dart:js';

import 'package:flutter/material.dart';
import 'package:hacker_news/src/screens/news_detail.dart';
import 'blocs/stories_provider.dart';
import 'screens/news_list.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return StoriesProvider(
      child: MaterialApp(
        title: 'News!',
        onGenerateRoute: routes,
      ),
    );
  }


  Route routes(RouteSettings settings) {
    String name = settings.name;
    if(name == '/'){
      return MaterialPageRoute(
          builder: (context){
            return NewsList();
          }
      );
    }else{
      return MaterialPageRoute(
        builder: (context){

          return NewsDetail();
        }
      );
    }
  }
}