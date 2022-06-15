import 'package:flutter/material.dart';
import 'customSpace.dart';

// ignore: must_be_immutable
class CutsomNotifyMe extends StatelessWidget {
  String imageUrl;
  String categoryName;
  CutsomNotifyMe({Key? key, required this.imageUrl, required this.categoryName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
                child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    imageUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    children: [
                      Text(
                        categoryName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      CustomVerticalSpace(value: 10),
                      const Text(
                        "2510 Joo",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            )),
            CustomVerticalSpace(value: 10),
            const Text(
              "Out of Stock",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff699E96)),
            ),
            CustomVerticalSpace(value: 10),
            const Text(
              "Get Notified when it's back in stock",
              style: TextStyle(fontSize: 15),
            ),
            CustomVerticalSpace(value: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      labelText: "Enter E-Mail Here",
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.8, color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF699E96), width: 2),
                      ),
                    ),
                    style: const TextStyle(fontSize: 17, color: Colors.black),
                    keyboardType: TextInputType.name,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text(
                              "We will tell you when the order be available",
                              style: TextStyle(fontSize: 18),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("OK"),
                              ),
                            ],
                          );
                        });
                  },
                  color: const Color(0xFF699E96),
                  child: const Text("Notify Me"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
