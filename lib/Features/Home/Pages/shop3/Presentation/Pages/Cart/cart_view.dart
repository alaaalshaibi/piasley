// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../../../../../main.dart';
import '../../../../../../../core/widgets/customSpace.dart';
import '../../manager/provider_.dart';
import 'Presentation/widgets/May_Also_Like.dart';
import 'Presentation/widgets/other__details.dart';

class Shop3CartView extends StatefulWidget {
  const Shop3CartView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Shop3CartViewState();
  }
}

class Shop3CartViewState extends State<Shop3CartView> {
  int number = 1;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        appBar: AppBar(
          backgroundColor: isSwitched == false ? Colors.white : Colors.black,
          elevation: 0,
          title: const Text("Shopping Cart"),
          foregroundColor: isSwitched == false ? Colors.black : Colors.white,
        ),
        body: Container(
          color: isSwitched == false ? Colors.white : Colors.black,
          child: ListView(
            shrinkWrap: true,
            children: [
              Consumer<Provcart3>(builder: (context, prov, child) {
                // prov is an object from Prov_cart(type Change Notifier)
                return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: prov.NewList.length,
                    itemBuilder: (context, i) {
                      return Container(
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        color:
                            isSwitched == false ? Colors.white : Colors.black,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(prov.NewList[i].url,
                                    height: 130, width: 100, fit: BoxFit.fill),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      prov.NewList[i].title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: isSwitched == false
                                              ? Colors.black
                                              : Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      prov.NewList[i].subtitle,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${prov.NewList[i].price} \$",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: isSwitched == false
                                                  ? Colors.black
                                                  : Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "35,00",
                                          style: TextStyle(
                                              fontSize: 15,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: isSwitched == false
                                                  ? Colors.black
                                                  : Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text("20%",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xff699E96),
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        MaterialButton(
                                          onPressed: () {
                                            var snackbar = SnackBar(
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              duration:
                                                  const Duration(seconds: 1),
                                              backgroundColor:
                                                  isSwitched == false
                                                      ? Colors.white
                                                      : Colors.black,
                                              margin: const EdgeInsets.only(
                                                  left: 20,
                                                  right: 20,
                                                  bottom: 10),
                                              content: ListView(
                                                shrinkWrap: true,
                                                children: [
                                                  const Text(
                                                    "Select Quantity :",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xFF699E96),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Container(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 20,
                                                            bottom: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        IconButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                number =
                                                                    number - 1;
                                                                ("Number equal : $number");
                                                              });
                                                            },
                                                            icon: const Icon(
                                                                Icons.remove,
                                                                size: 25)),
                                                        Text(
                                                          "$number",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  isSwitched ==
                                                                          false
                                                                      ? Colors
                                                                          .black
                                                                      : Colors
                                                                          .white,
                                                              fontSize: 20),
                                                        ),
                                                        IconButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                number =
                                                                    number + 1;
                                                                ("Number equal : $number");
                                                              });
                                                            },
                                                            icon: const Icon(
                                                                Icons.add,
                                                                size: 25)),
                                                      ],
                                                    ),
                                                  ),
                                                  MaterialButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pushNamed(
                                                              "Delivery_Details");
                                                    },
                                                    child: Text(
                                                      "Add to Bag",
                                                      style: TextStyle(
                                                          color: isSwitched ==
                                                                  false
                                                              ? Colors.white
                                                              : Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                    color:
                                                        const Color(0xFF699E96),
                                                  ),
                                                ],
                                              ),
                                            );
                                            _globalKey.currentState
                                                ?.showSnackBar(snackbar);
                                          },
                                          padding: const EdgeInsets.all(5),
                                          color: Colors.grey,
                                          height: 25,
                                          minWidth: 25,
                                          child: Row(
                                            children: const [
                                              Text("Qty: 1"),
                                              Icon(Icons.keyboard_arrow_down)
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        MaterialButton(
                                          height: 25,
                                          minWidth: 25,
                                          padding: const EdgeInsets.all(5),
                                          onPressed: () {},
                                          color: Colors.grey,
                                          child: Row(
                                            children: const [
                                              Text("Size: 1"),
                                              Icon(Icons.keyboard_arrow_down)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            // ********************************* End First Row *************************************
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      prov.removeItem(prov.NewList[i]);
                                    },
                                    icon: Icon(Icons.delete,
                                        size: 18,
                                        color: isSwitched == false
                                            ? Colors.black
                                            : Colors.white)),
                                Text(
                                  "Remove from Cart",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: isSwitched == false
                                          ? Colors.black
                                          : Colors.white),
                                ),
                                CustomHorizontalSpace(value: 43),
                              ],
                            ),
                            const Divider(
                              color: Colors.grey,
                              thickness: 3,
                            ),
                          ],
                        ),
                      );
                    });
              }),
              // ******************************************** End Consumer **********************************************
              Container(
                margin: const EdgeInsets.only(left: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "You May also Like",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: isSwitched == false
                              ? Colors.black
                              : Colors.white),
                    ),
                    MayAlsolike(), // This Widget exist in May_Also_liske Page
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: const Divider(
                  color: Colors.grey,
                  thickness: 3,
                ),
              ),
              // **************************** End May Also Like **************************************
              Container(
                margin: const EdgeInsets.only(
                    left: 20, top: 10, right: 20, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Coupon :",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: isSwitched == false
                              ? Colors.black
                              : Colors.white),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white38.withOpacity(0.2),
                          prefixIcon: Icon(Icons.support,
                              color: isSwitched == false
                                  ? Colors.black
                                  : Colors.white),
                          hintText: "Apply Coupons",
                          hintStyle: TextStyle(
                              color: isSwitched == false
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.normal),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0,
                                color: isSwitched == false
                                    ? Colors.grey
                                    : Colors.black),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0,
                                  color: isSwitched == false
                                      ? Colors.white
                                      : Colors.black))),
                      cursorColor: const Color(0xff699E96),
                      style: const TextStyle(
                          color: Color(0xFF699E96),
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ],
                ),
              ),
              // **************************** Other Details **************************************
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: const Divider(
                  color: Colors.grey,
                  thickness: 0.4,
                ),
              ),
              const Otherdetails(),
            ],
          ),
        ));
  }
}
