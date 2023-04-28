import 'package:flutter/material.dart';
import './New_Transaction.dart';
import './UpdateProduct.dart';
import '../modulee/ProductReport.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<ProductReport> _userTransaction = [
    ProductReport(
      //catagary: 'Industrial Product',
      productid: 111,
      product: 'C17 - UHF RFID Reader',
      qty: 2000,
      //newproductorderqty: 2,
      //newsalesreturnqty: 2,
      //lastonemonthpurchanseReport: 3,
      //lastonemonthsalesreport: 5,
    ),
    ProductReport(
      //catagary: 'Industrial Product',
      productid: 222,
      product: 'R6 - UHF RFID Reader',
      qty: 100,
      //newproductorderqty: 10,
      //newsalesreturnqty: 20,
      //lastonemonthpurchanseReport: 30,
      //lastonemonthsalesreport: 50,
    ),
    ProductReport(
      //catagary: 'Home Appliance',
      productid: 333,
      product: 'Air Conditioner - Hitachi',
      qty: 50,
      //newproductorderqty: 10,
      //newsalesreturnqty: 20,
      //lastonemonthpurchanseReport: 30,
      //lastonemonthsalesreport: 50,
    ),
    ProductReport(
      //  catagary: 'Home Appliance',
      productid: 444,
      product: 'Fridge 360 - Wipro',
      qty: 20,
      //newproductorderqty: 10,
      //newsalesreturnqty: 20,
      //lastonemonthpurchanseReport: 30,
      //lastonemonthsalesreport: 50,
    ),
    ProductReport(
      //catagary: 'Service',
      productid: 555,
      product: 'Software - RFID Reader',
      qty: 3,
      //newproductorderqty: 10,
      //newsalesreturnqty: 20,
      //lastonemonthpurchanseReport: 30,
      //lastonemonthsalesreport: 50,
    ),
    ProductReport(
      //catagary: 'Service',
      productid: 666,
      product: 'Software E-Commerce',
      qty: 1,
      //newproductorderqty: 10,
      //newsalesreturnqty: 20,
      //lastonemonthpurchanseReport: 30,
      //lastonemonthsalesreport: 50,
    ),
  ];
  void _addNewProduct(
      double new_productid, String new_product, double new_qty) {
    final newTx = ProductReport(
      //  catagary : new_catagary,
      productid: new_productid,
      product: new_product,
      qty: new_qty,
      // newproductorderqty: new_newproductorderqty,
      // newsalesreturnqty: new_newsalesreturnqty,
      // lastonemonthpurchanseReport: new_lastonemonthpurchanseReport,
      //lastonemonthsalesreport: new_lastonemonthsalesreport,
    );
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(addtxt: _addNewProduct),
        UpdateProduct(_userTransaction),
      ],
    );
  }
}
