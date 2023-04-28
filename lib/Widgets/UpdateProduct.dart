import 'package:flutter/material.dart';
import '../modulee/ProductReport.dart';

class UpdateProduct extends StatelessWidget {
  final List<ProductReport> productrpt;
  UpdateProduct(this.productrpt);

  @override
  Widget build(BuildContext context) {
    return //----------------------------Mapping Part--------------------------------------
        Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: productrpt.map((rpt) {
        return Card(
          elevation: 1,
          color: const Color(0XFF92191C),
          child: Row(children: <Widget>[
            //------------------------Container Style-----------------------
            Container(
              height: 20,
              width: 50,
              //width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xff2D282A),
                  width: 2,
                ),
              ),

              child: Text(
                rpt.productid.round().toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ),
            //const Padding(padding: EdgeInsets.all(5)),

            Container(
              height: 20,
              width: 170,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xff2D282A),
                  width: 2,
                ),
              ),
              child: Text(
                rpt.product,
                style: const TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.white),
              ),
            ),
            // const Padding(padding: EdgeInsets.all(5)),
            Container(
              //margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xff2D282A),
                  width: 2,
                ),
              ),

              height: 20,
              width: 70,
              child: Text(
                rpt.qty.round().toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.white),
              ),
            ),
          ]),
        );
      }).toList(),
    );
  }
}
