import 'package:flutter/material.dart';

class ImageDetails extends StatefulWidget {
  final String imageurl;
  final String heroTag;
  const ImageDetails({super.key, required this.imageurl, required this.heroTag});

  @override
  State<ImageDetails> createState() => _ImageDetailsState();
}

class _ImageDetailsState extends State<ImageDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Detail'),
      ),
      body: Center(
        child: Hero(
          tag: widget.heroTag,
          child: Image.network(widget.imageurl),
        ),
      ),
    );
  }
}