import 'package:flutter/material.dart';
import 'custom_categories_cost.dart';
import 'custom_five_stars.dart';
import 'deliveryDetails.dart';
import '../../../../../../../../../core/widgets/customSpace.dart';
import '../../../../../../../../../main.dart';
import 'custom_notify_me.dart';

// ignore: must_be_immutable
class CustomShopNowWidget extends StatelessWidget {
  String appBarTitle;
  List<Map> details;
  CustomShopNowWidget(
      {Key? key, required this.appBarTitle, required this.details})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: isSwitched == false ? Colors.white : Colors.black,
          elevation: 0,
          title: Text(appBarTitle),
          foregroundColor: isSwitched == false ? Colors.black : Colors.white,
        ),
        body: Container(
          color: isSwitched == false ? Colors.white : Colors.black,
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: GridView.builder(
                  itemCount: details.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 0,
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            // Go to your order page
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return i == 2
                                  ? CutsomNotifyMe(
                                      imageUrl: '${details[i]['url']}',
                                      categoryName:
                                          '${details[i]['description']}',
                                    )
                                  : const DeliveryDetails();
                            }));
                          },
                          child: Image.asset(
                            details[i]['url'],
                            width: 200,
                            height: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            CustomHorizontalSpace(value: 15),
                            const CustomFiveStarsIcon(),
                          ],
                        ),
                        // The Main Five Icon made on top and i did it to make use it easy later
                        CustomVerticalSpace(value: 2),
                        Row(
                          children: [
                            CustomHorizontalSpace(value: 15),
                            Text(
                              details[i]['description'],
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  color: isSwitched == false
                                      ? Colors.black
                                      : Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            CustomHorizontalSpace(value: 15),
                            const CustomCategoriesCost(),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
