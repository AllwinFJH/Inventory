import 'package:inventory/FormText.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:inventory/InventoryDetail.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:inventory/ProductDetail/ProductTag.dart';
import '../TextW.dart';
import './ProductTag.dart';
import '../modulee/ProductDeclaration.dart';

class ProductTag extends StatefulWidget {
  final List<ProductDeclaration> rrr;
  ProductTag(this.rrr);

//  ProductTag({super.key});

  @override
  State<ProductTag> createState() => _ProductTagState();
}

class _ProductTagState extends State<ProductTag> {
// final List<ProductDeclaration> r;
// ProductTag(this.r);

  // final List<ProductDeclaration> _ProductList = [
  //   ProductDeclaration(name: '', id: 0, barcode: ''),
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.rrr.map((t) {
        return
            //  Card(
            //   child:
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Container(
            //   height: 20,
            // child:

            TextW(textDes: t.name, textSize: 12),
            // ),
            // Container(
            //   height:20,
            // child:
            TextW(textDes: t.id.round().toString(), textSize: 12),
            // ),
            // Container(
            //   height:20,
            // child:
            TextW(textDes: t.barcode, textSize: 12),
            // ),
          ],
        );
        // );
      }).toList(),
    );
    //       ],
    //     ),
    //   ),
    // );
  }
}
