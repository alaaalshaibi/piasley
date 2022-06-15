import 'package:flutter/material.dart';
import '../../main.dart';

String visa = "";

class DeliveryDetails extends StatefulWidget {
  const DeliveryDetails({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DeliveryDetailsState();
  }
}

class DeliveryDetailsState extends State<DeliveryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delivery Details"),
        backgroundColor: isSwitched == false ? Colors.white : Colors.black,
        elevation: 0,
        foregroundColor: isSwitched == false ? Colors.black : Colors.white,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          // ****************** First Container ********************
          Container(
            height: 220,
            color: const Color(0xFF699E96).withOpacity(0.1),
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: "eg",
                            groupValue: visa,
                            onChanged: (value) {
                              setState(() {
                                visa = value.toString();
                              });
                            }),
                        const Text(
                          "noor khalil",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      margin: const EdgeInsets.only(right: 15),
                      color: const Color(0xFF699E96),
                      height: 25,
                      width: 45,
                      child: Text(
                        "HOME",
                        style: TextStyle(
                            color: isSwitched == false
                                ? Colors.white
                                : Colors.black,
                            fontSize: 13),
                      ),
                    )
                  ],
                ),
                // *************************** End First Row ****************************************
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "jordan",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "Amman",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "swileh",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "Phone No: +962777777777",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 48,
                    ),
                    MaterialButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed("Delivery_Details");
                      },
                      child: Text(
                        "Remove",
                        style: TextStyle(
                            color: isSwitched == false
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      color: const Color(0xFF699E96),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    // ****************************** Another Button ****************************
                    MaterialButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed("Delivery_Details");
                      },
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            color: isSwitched == false
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      color: Color(0xFF699E96),
                    ),
                  ],
                )
              ],
            ),
          ),
          // ****************** First Container ********************
          Container(
            height: 220,
            color: const Color(0xFF699E96).withOpacity(0.1),
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: "em",
                            groupValue: visa,
                            onChanged: (value) {
                              setState(() {
                                visa = value.toString();
                              });
                            }),
                        const Text(
                          "raghad al-najjar",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(right: 15),
                      color: const Color(0xFF699E96),
                      height: 25,
                      width: 55,
                      child: Text(
                        "OFFICE",
                        style: TextStyle(
                            color: isSwitched == false
                                ? Colors.white
                                : Colors.black,
                            fontSize: 13),
                      ),
                    )
                  ],
                ),
                // *************************** End First Row ****************************************
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "jordan",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "Al-salt",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "Al-Balqa Applied university",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "Phone No: 962788777777",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 48,
                    ),
                    MaterialButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed("Delivery_Details");
                      },
                      child: Text(
                        "Remove",
                        style: TextStyle(
                            color: isSwitched == false
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      color: const Color(0xFF699E96),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    // ****************************** Another Button ****************************
                    MaterialButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed("Delivery_Details");
                      },
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            color: isSwitched == false
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      color: const Color(0xFF699E96),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            padding: const EdgeInsets.only(top: 5),
            child: MaterialButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                          height: 100,
                          child: const Text(
                            "Done !",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          color: Colors.grey.withOpacity(0.2),
                          alignment: Alignment.center);
                    });
              },
              child: const Text(
                "Confirm",
                style: TextStyle(color: Color(0xFF699E96)),
              ),
              color: isSwitched == false ? Colors.white : Colors.black,
              elevation: 0.5,
              shape: const RoundedRectangleBorder(
                  side: BorderSide(width: 0.5, color: Color(0xFF699E96))),
            ),
          ),
        ],
      ),
    );
  }
}
