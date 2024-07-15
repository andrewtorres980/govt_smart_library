import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BookDetailScreen extends StatelessWidget {
  final String title;
  final String pdfPath;
  final String image;
  final String author;

  const BookDetailScreen({
    Key? key,
    required this.title,
    required this.pdfPath,
    required this.image,
    required this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SfPdfViewer.network(
            'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf'),
    );
  }
}
