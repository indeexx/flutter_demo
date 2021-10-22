/*
 * @Author: indeex
 * @Date: 2021-10-20 21:09:59
 * @Email: indeex@qq.com
 */
class NewsItemModal {
  String? author;
  String? title;
  String? content;

  NewsItemModal({this.author, this.title, this.content});

  factory NewsItemModal.fromJson(dynamic json) {
    return NewsItemModal(
      author: json['author'],
      title: json['title'],
      content: json['content'],
    );
  }
}

class NewsListModal {
  List<NewsItemModal> data;
  NewsListModal(this.data);

  factory NewsListModal.fromJson(List json) {
    return NewsListModal(json.map((i) => NewsItemModal.fromJson((i))).toList());
  }
}
