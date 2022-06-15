import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../../../../main.dart';
import '../../../../manager/provider.dart';

class OtherDetails extends StatelessWidget {
  const OtherDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Other Details :",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFF699E96)),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bag total",
                style: TextStyle(
                    color: isSwitched == false ? Colors.black : Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 17),
              ),
              Text(
                "220 \$",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: isSwitched == false ? Colors.black : Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bag Savings",
                style: TextStyle(
                    color: isSwitched == false ? Colors.black : Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 17),
              ),
              Text(
                "-20 \$",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: isSwitched == false ? Colors.black : Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Coupon Discount",
                style: TextStyle(
                    color: isSwitched == false ? Colors.black : Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 17),
              ),
              const Text("Apply Coupon",
                  style: TextStyle(
                      color: Color(0xFF699E96),
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery",
                style: TextStyle(
                    color: isSwitched == false ? Colors.black : Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 17),
              ),
              Text("220 \$",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color:
                          isSwitched == false ? Colors.black : Colors.white)),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: const Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
          ),
          // ***************************** Total Amount *******************************
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total Amount",
                style: TextStyle(
                    color: Color(0xFF699E96),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Consumer<Provcart>(builder: (context, prov, child) {
                return Text(
                  "${prov.totalprice}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Color(0xFF699E96),
                  ),
                );
              })
            ],
          ),
          const SizedBox(height: 15),
          // ******************************* No Delivery Charges *******************
          Container(
            margin: const EdgeInsets.only(left: 1),
            alignment: Alignment.center,
            child: MaterialButton(
              color: isSwitched == false ? Colors.white : Colors.grey,
              minWidth: 100,
              height: 50,
              elevation: 5,
              splashColor: const Color(0xFF699E96),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.all(15),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('main_page');
              },
              child: Text(
                "your order will be delivered tomorrow",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: isSwitched == false ? Colors.black : Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
