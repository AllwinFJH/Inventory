import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './Widgets/UserTransaction.dart';
import './Widgets/New_Transaction.dart';
import './Widgets/UpdateProduct.dart';
import './modulee/ProductReport.dart';
import 'ProductDetail/ProductMaster.dart';

class InventoryDetail extends StatefulWidget {
  const InventoryDetail({super.key});
  @override
  State<InventoryDetail> createState() => _InventoryDetailState();
}

class _InventoryDetailState extends State<InventoryDetail> {
  // String search = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Inventory Detail',
          ),
          backgroundColor: Colors.white,
          foregroundColor: const Color.fromARGB(255, 195, 49, 95),
          centerTitle: true,
          leading: const Image(
            image: AssetImage('Asset/Pro17Logo.PNG'),
          ),
          actions: [
            Text(
              DateFormat('dd-MM-yyyy hh:mm').format(DateTime.now()),
              style: const TextStyle(color: Color.fromARGB(255, 195, 49, 95)),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(10)),
                  const Icon(
                    Icons.camera_front,
                    // weight: 20,
                    size: 50,
                  ),
                  // const Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductMaster()),
                      );
                    },
                    child: const Text(
                      'Add New Product',
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

                  UserTransaction()
                ]),
          ),
        ),
      ),
    );
  }
}
