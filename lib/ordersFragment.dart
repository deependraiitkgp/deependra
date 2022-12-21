import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:move/trackLoadFragment.dart';
import 'package:move/widgetProvider.dart';

class OrdersFragment extends StatefulWidget {
  const OrdersFragment({Key? key}) : super(key: key);

  @override
  State<OrdersFragment> createState() => _OrdersFragmentState();
}

class _OrdersFragmentState extends State<OrdersFragment> {
  int groupValue = 0;
  bool clicked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: Column(
          children: [
            Row(
              children: [
                // CupertinoSegmentedControl<int>(
                //   groupValue: groupValue,
                //   onValueChanged: (groupValue){
                //     setState(() {
                //       this.groupValue = groupValue;
                //     });
                //   },
                //   selectedColor: Colors.black,
                //   unselectedColor: Colors.white,
                //   borderColor: Colors.black,
                //   pressedColor: Colors.white,
                //   children: {
                //     0: Container(
                //         alignment: Alignment.center,
                //         height: 35.0,
                //         child: const Text("Ongoing Loads",)
                //     ),
                //     1: Container(
                //         alignment: Alignment.center,
                //         height: 35.0,
                //         child: const Text("Past Loads",)
                //     ),
                //   },
                // )
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      clicked = true;
                    });
                  },
                  style: clicked ? WidgetProvider.fullButtonStyle() : WidgetProvider.emptyButtonStyle(),
                  child: Text("Ongoing Loads",style: TextStyle(color: clicked ? Colors.white : Colors.black),),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      clicked = false;
                    });
                  },
                  style: !clicked ? WidgetProvider.fullButtonStyle() : WidgetProvider.emptyButtonStyle(),
                  child: Text("Past Loads",style: TextStyle(color: !clicked ? Colors.white : Colors.black),),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context,index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const TrackLoadFragment()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 2),
                        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text("\u{20B9}1000.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 17),),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: const BorderRadius.all(Radius.circular(8))
                                ),
                                alignment: Alignment.center,
                                child: const Text("In Transit",
                                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(
                                height: 80,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Dash(
                                      direction: Axis.vertical,
                                      length: 50,
                                      dashLength: 50,
                                      dashThickness: 2,
                                      dashColor: Colors.black,
                                    ),
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 15,),
                              SizedBox(
                                height: 100,
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Pickup Location",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                    Text("10:20 am",style: TextStyle(color: Colors.grey),),
                                    Spacer(),
                                    Text("Drop Location",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                    Text("Not assigned",style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
