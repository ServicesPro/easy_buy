import 'dart:io';

import 'package:easy_buy/models/product.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:path_provider/path_provider.dart';

import '../helper.dart';

class ShareButton extends StatefulWidget {
  final Product product;

  ShareButton({this.product});

  @override
  _ShareButtonState createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kDefaultPadding),
      height: 50,
      width: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: widget.product.color,
        ),
      ),
      child: IconButton(
        icon: Icon(
          Icons.share,
          color: widget.product.color,
        ),
        onPressed: () {
          _share();
        },
      ),
    );
  }

  Future<File> getImageFileFromAssets() async {
    final byteData = await rootBundle.load(widget.product.image);

    final file =
        File('${(await getTemporaryDirectory()).path}/${widget.product.image}');

    await file.writeAsBytes(byteData.buffer.asUint8List(
      byteData.offsetInBytes,
      byteData.lengthInBytes,
    ));

    return file;
  }

  // void _share(BuildContext context) async {
  //   final RenderBox box = context.findRenderObject();
  //   final String text =
  //       "${widget.product.title} - ${widget.product.description}";
  //   final file = await getImageFileFromAssets();
  //   Share.shareFiles(
  //     [file.path],
  //     text: text,
  //     subject: widget.product.description,
  //     sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
  //   );
  // }

  void _share() async {
    final ByteData bytes = await rootBundle.load(widget.product.image);
    final String fileName = widget.product.image.split('/').last;
    final String type = fileName.split('.').last;
    await Share.file(
      '${widget.product.title} - ${widget.product.price} F CFA',
      fileName,
      bytes.buffer.asUint8List(),
      'image/$type',
      text: '${widget.product.description}',
    );
  }
}
