import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImagePreview extends StatefulWidget {
  ImagePreview(this.file, {super.key});
  XFile file;

  @override
  State <ImagePreview> createState() =>  ImagePreviewState();
}

class  ImagePreviewState extends State <ImagePreview> {
  @override
  Widget build(BuildContext context) {
    File picture = File(widget.file.path);
    return Scaffold(
      appBar: AppBar(title: const Text("Ảnh chụp được"),),
      body: Center(
        child: Image.file(picture),
      ),
    );
  }
}