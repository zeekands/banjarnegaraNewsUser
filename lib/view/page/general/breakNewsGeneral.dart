import 'package:banjarnegaranews/view/widget/newsList.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../model/news.dart';
import '../../../viewmodel/service/api_service.dart';
import '../../widget/shimmerLoading.dart';

class BreakNewsGeneral extends StatelessWidget {
  const BreakNewsGeneral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiService api = ApiService();

    return Container(
      height: 270,
      child: FutureBuilder<List<News>>(
        future: api.fetchNewsGeneral(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Pengambilan Data API Error"),
            );
          } else if (snapshot.hasData) {
            return BreakNewsList(news: snapshot.data!);
          }
          return Center(
            child: ShimmerLoadingBreakNews(),
          );
        },
      ),
    );
  }
}
