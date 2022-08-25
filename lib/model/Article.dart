class Article{
  final String? author;
  final String title;
  final String description;
  final String? urlpage;

  Article({
    this.author,
    required this.title,
    required this.description,
    this.urlpage,
});

  factory Article.fromJson(Map<String, dynamic> json){
    author: json['author'] == null ? null: json['author'];
    title: json['title'] == null ? null: json['title'];
    description: json['description'] == null ? null: json['description'];
    urlpage: json['urlpage'] == null ? null: json['urlpage'];

  }
}