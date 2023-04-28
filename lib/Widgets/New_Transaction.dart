import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import './UpdateProduct.dart';
import '../modulee/ProductReport.dart';
import './UserTransaction.dart';

class NewTransaction extends StatefulWidget {
  final Function addtxt;
  const NewTransaction({super.key, required this.addtxt});

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final new_catagary = TextEditingController();
  final new_productid = TextEditingController();
  final new_product = TextEditingController();
  final new_qty = TextEditingController();
  final new_newproductorderqty = TextEditingController();
  final new_newsalesreturnqty = TextEditingController();
  final new_lastonemonthpurchanseReport = TextEditingController();
  final new_lastonemonthsalesreport = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Container(
          //      padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  widget.addtxt(double.parse(new_productid.text),
                      new_product.text, double.parse(new_qty.text));
                },
                child: const Text(
                  'Add Product',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF92191C),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              //Product ID
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Product Id',
                  labelStyle: TextStyle(color: Color(0XFF92191C)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Color(0XFF92191C)),
                  ),
                  fillColor: Color(0XFF92191C),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF92191C),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  prefixIcon: Icon(Icons.add_card),
                  prefixIconColor: (Color(0XFF92191C)),
                ),
                style: const TextStyle(color: Color(0XFF92191C), fontSize: 15),
                controller: new_productid,
              ),
              //Product
              Padding(padding: EdgeInsets.all(5)),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Product',
                  labelStyle: TextStyle(color: Color(0XFF92191C)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Color(0XFF92191C)),
                  ),
                  fillColor: Color(0XFF92191C),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF92191C),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  prefixIcon: Icon(Icons.add_business_sharp),
                  prefixIconColor: (Color(0XFF92191C)),
                ),
                style: const TextStyle(color: Color(0XFF92191C), fontSize: 15),
                controller: new_product,
              ),
              //Product Qty
              Padding(padding: EdgeInsets.all(5)),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Product Qty',
                  labelStyle: TextStyle(color: Color(0XFF92191C)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Color(0XFF92191C)),
                  ),
                  fillColor: Color(0XFF92191C),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF92191C),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  prefixIcon: Icon(Icons.production_quantity_limits_sharp),
                  prefixIconColor: (Color(0XFF92191C)),
                ),
                style: const TextStyle(color: Color(0XFF92191C), fontSize: 15),
                controller: new_qty,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
