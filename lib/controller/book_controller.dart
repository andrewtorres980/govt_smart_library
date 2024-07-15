import 'package:get/get.dart';
import 'package:govt_smart_library/model/book_model.dart';

class BookController extends GetxController {
var bookList = <BookModel>[
    BookModel(
      title: 'Python Basics',
      image: 'assets/images/book2.jpg',
      author: 'Mark Lutz',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Clean Code',
      image: 'assets/images/book2.jpg',
      author: 'Robert C. Martin',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Design Patterns',
      image: 'assets/images/book2.jpg',
      author: 'Erich Gamma',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Pragmatic Programmer',
     image: 'assets/images/book2.jpg',
      author: 'Andrew Hunt',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Algorithms',
      image: 'assets/images/book2.jpg',
      author: 'Thomas H. Cormen',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'JavaScript',
      image: 'assets/images/book2.jpg',
      author: 'Douglas Crockford',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Effective Java',
      image: 'assets/images/book2.jpg',
      author: 'Joshua Bloch',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'You Don’t Know JS',
      image: 'assets/images/book2.jpg',
      author: 'Kyle Simpson',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'AI Approach',
      image: 'assets/images/book2.jpg',
      author: 'Stuart Russell',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Deep Learning',
      image: 'assets/images/book2.jpg',
      author: 'Ian Goodfellow',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Computer Networks',
      image: 'assets/images/book2.jpg',
      author: 'James F. Kurose',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Database Concepts',
      image: 'assets/images/book2.jpg',
      author: 'Abraham Silberschatz',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Operating Systems',
      image: 'assets/images/book2.jpg',
      author: 'Abraham Silberschatz',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'SICP',
     image: 'assets/images/book2.jpg',
      author: 'Harold Abelson',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Code Complete',
      image: 'assets/images/book2.jpg',
      author: 'Steve McConnell',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Refactoring',
      image: 'assets/images/book2.jpg',
      author: 'Martin Fowler',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Enterprise Patterns',
      image: 'assets/images/book2.jpg',
      author: 'Martin Fowler',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Continuous Delivery',
      image: 'assets/images/book2.jpg',
      author: 'Jez Humble',
     pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'SRE',
      image: 'assets/images/book2.jpg',
      author: 'Niall Richard Murphy',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
    BookModel(
      title: 'Mythical Man-Month',
      image: 'assets/images/book2.jpg',
      author: 'Frederick P. Brooks Jr.',
      pdfUrl: 'assets/pdf/book1.pdf',
    ),
  ].obs;
}