import 'package:inventory/FormText.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:inventory/InventoryDetail.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:inventory/ProductDetail/ProductTag.dart';
import '../TextW.dart';
import './ProductTag.dart';
import '../modulee/ProductDeclaration.dart';

class ProductMaster extends StatefulWidget {
  const ProductMaster({super.key});
  // final List<ProductDeclaration> tag;
  // ProductMaster(this.tag);

  // final List<ProductDeclaration> _ProductList;
  // ProductMaster(this._ProductList);

  @override
  State<ProductMaster> createState() => _ProductMasterState();
}

class _ProductMasterState extends State<ProductMaster> {
  final newproduct = TextEditingController();
  final newid = TextEditingController();
  final newbarcode = TextEditingController();
  final dummy = TextEditingController();

  final List<ProductDeclaration> _ProductList = [
    // ProductDeclaration(name: '', id: 0, barcode: ''),
  ];

  void _showProduct(String newproduct, double newid, String newbarcode) {
    final showpro = ProductDeclaration(
      name: newproduct,
      id: newid,
      barcode: newbarcode,
    );
    setState(() {
      _ProductList.add(showpro);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Product Master - Add/Edit',
            style: TextStyle(fontSize: 16),
          ),
          //  titleTextStyle: const TextStyle(fontSize: 50),
          backgroundColor: Colors.white,
          foregroundColor: const Color.fromARGB(255, 195, 49, 95),
          centerTitle: true,

          leading: const Image(
            image: AssetImage('Asset/Pro17Logo.PNG'),
          ),
          actions: [
            Text(
              DateFormat('dd/MM/yyyy hh:mm').format(
                DateTime.now(),
              ),
              style: const TextStyle(color: Color.fromARGB(255, 195, 49, 95)),
            )
          ],
        ),
        //  ),

        body: Padding(
          padding: const EdgeInsets.all(12),
          child: SafeArea(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 60,
                            child: const Icon(
                              Icons.camera_front,
                              size: 50,
                              color: Color(0XFF92191C),
                            ),
                          ),
                          //const Padding(padding: EdgeInsets.all(8)),
                          Container(
                            height: 50,
                            width: 300,
                            //color: Colors.purple,
                            child: const TextField(
                              //maxLines: 1,
                              decoration: InputDecoration(
                                labelText: 'Product,Product ID, Product type',
                                labelStyle: TextStyle(color: Color(0XFF92191C)),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide:
                                      BorderSide(color: Color(0XFF92191C)),
                                ),
                                fillColor: Color(0XFF92191C),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0XFF92191C),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                prefixIcon: Icon(Icons.search),
                                prefixIconColor: Color(0XFF92191C),
                              ),
                              style: TextStyle(
                                  color: Color(0XFF92191C), fontSize: 15),
                            ),
                          ),
                        ]),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5)),
                const Text(
                  'Product Detail :',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF92191C)),
                ),
                const Padding(padding: EdgeInsets.all(5)),
                Card(
                  child: Container(
                    height: 50,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const TextW(textDes: 'Product Name', textSize: 12),
                            const TextW(textDes: 'Product ID', textSize: 12),
                            const TextW(textDes: 'Barcode', textSize: 12),
                            //const Padding(padding: EdgeInsets.all(2)),
                          ],
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        ProductTag(_ProductList),
                        //   ],
                        // ),

                        // Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //     children: [

                        // tag.map((t) {
                        //     return
                        //     TextW(textDes: t.name, textSize: 12),
                        //     TextW(textDes: t.id, textSize: 12),
                        //     TextW(textDes: t.barcode, textSize: 12),
                        //   }).toList(),
                        // ),
                        // ]),
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5)),
                Card(
                  child: Container(
                    height: 400,
                    width: 400,
                    alignment: Alignment.topLeft,
                    child: Scrollbar(
                      thickness: 10,
                      trackVisibility: true,
                      radius: const Radius.circular(20),
                      thumbVisibility: true,
                      interactive: true,
                      child: SingleChildScrollView(
                        clipBehavior: Clip.hardEdge,
                        scrollDirection: Axis.vertical,
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'Product Name',
                                bcolor: const Color(0XFF92191C),
                                textCont: newproduct,
                              ),
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'Product ID',
                                bcolor: const Color(0XFF92191C),
                                textCont: newid,
                              ),
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'Barcode',
                                bcolor: const Color(0XFF92191C),
                                textCont: newbarcode,
                              ),
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'Product Type',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'Manufacturer ID',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'County',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'Product and Services',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'Configuration - 1',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'Configuration - 2',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'Configuration - 3',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'Configuration - 4',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'Configuration - 5',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'Configuration - 6',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              const SizedBox(height: 8),
                              FormText(
                                radiaval: 10,
                                texthind: 'Configuration - 7',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              FormText(
                                radiaval: 10,
                                texthind: 'Additional Features',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              FormText(
                                radiaval: 10,
                                texthind: 'Warranty',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              FormText(
                                radiaval: 10,
                                texthind: 'Guarantee',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              FormText(
                                radiaval: 10,
                                texthind: 'Buying Price',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              FormText(
                                radiaval: 10,
                                texthind: 'Term and Conditions',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              FormText(
                                radiaval: 10,
                                texthind: 'Margin in Percentage',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              FormText(
                                radiaval: 10,
                                texthind: 'Product Weight',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              FormText(
                                radiaval: 10,
                                texthind: 'Product Width',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                              FormText(
                                radiaval: 10,
                                texthind: 'Product Height',
                                bcolor: const Color(0XFF92191C),
                                textCont: dummy,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          //  alignment: Alignment.topLeft,
                          height: 40,
                          width: 250,
                          color: Color(0XFF92191C),
                          // color: Colors.blue
                          child: ElevatedButton(
                            onPressed: () {
                              _showProduct(
                                newproduct.text,
                                double.parse(newid.text),
                                newbarcode.text,
                              );
                            },
                            child: const Text(
                              'Submit & Add Manufacturer',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF92191C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Color(0XFF92191C),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(3)),
                        Container(
                          height: 40,
                          width: 100,
                          color: const Color(0XFF92191C),
                          child: ElevatedButton(
                            onPressed: () {
                              _showProduct;
                            },
                            child: const Text(
                              'Clear',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0XFF92191C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
