class BookModel {
  final String title;
  final String image;
  final String author;
  final String pdfUrl;
  final bool favorite;

  BookModel({
    required this.title,
    required this.image,
    required this.author,
    required this.pdfUrl,
    this.favorite = false,
  });
}
