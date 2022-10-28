class Post {
  String title = "";
  String content = "";
  String? author = "admin";

  Post(this.title, this.content, {this.author = "admin"});
}