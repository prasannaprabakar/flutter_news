import 'package:flutter/material.dart';
import 'package:flutter_news/helper/news.dart';
import 'package:flutter_news/models/article_model.dart';
import 'package:flutter_news/views/article.dart';

class category_news extends StatefulWidget {
  final String category;
  category_news({this.category});
  @override
  _category_newsState createState() => _category_newsState();
}

class _category_newsState extends State<category_news> {
  List<ArticleModel> articles = new List<ArticleModel>();
  bool _loading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryNewsClass();
  }

  getCategoryNewsClass() async {
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.category);
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Flutter"),
            Text(
              "News",
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.save)),
          )
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.red,
                ),
              ),
            )
          : SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      ///blogs
                      padding: EdgeInsets.only(top: 16),
                      child: ListView.builder(
                        itemCount: articles.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return BlogTile(
                            imageUrl: articles[index].urlToImage,
                            tittle: articles[index].tittle,
                            desc: articles[index].description,
                            url: articles[index].url,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl, tittle, desc, url;
  BlogTile(
      {@required this.imageUrl,
      @required this.tittle,
      @required this.desc,
      @required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => article(
                      blogUrl: url,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl)),
            SizedBox(
              height: 8,
            ),
            Text(
              tittle,
              style: TextStyle(fontSize: 17, color: Colors.black87),
            ),
            Text(
              desc,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
