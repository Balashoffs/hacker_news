import 'package:hacker_news/src/models/item_model.dart';
import 'package:hacker_news/src/resources/news_api_provider.dart';
import 'dart:convert';
import "package:flutter_test/flutter_test.dart";
import 'package:http/http.dart';
import 'package:http/testing.dart';

void main(){
  test('Test',() async {
    final newApi = new NewsApiProvider();
    newApi.client = MockClient((Request request, )async{
      return Response(json.encode([1, 2, 3, 4]), 200);
    });

    final ids = await newApi.fetchTopIds();
    expect(ids, [1,2,3,4]);
  });

  test('Test2', ()async{
    final newsApi = NewsApiProvider();
    newsApi.client = MockClient((Request request)async{
      final jsonMap = {'id': 123};
      return Response(json.encode(jsonMap), 200);
    });

    final ItemModel item = await newsApi.fetchItem(123);
    expect(item.id, 123);
  });
}