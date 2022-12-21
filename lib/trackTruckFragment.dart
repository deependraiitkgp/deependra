import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:move/widgetProvider.dart';

class TrackTruckFragment extends StatefulWidget {
  const TrackTruckFragment({Key? key}) : super(key: key);

  @override
  State<TrackTruckFragment> createState() => _TrackTruckFragmentState();
}

class _TrackTruckFragmentState extends State<TrackTruckFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        title: const Text("Status of load",style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        color: Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  WidgetProvider.getLocation(),
                  const SizedBox(height: 40,),
                  WidgetProvider.getRowWidget("Truck Number", "12345"),
                  const SizedBox(height: 5,),
                  WidgetProvider.getRowWidget("Driver Name", "John Doe"),
                  const SizedBox(height: 5,),
                  WidgetProvider.getRowWidget("Driver Phone Number", "9434343213"),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(thickness: 2,color: Colors.grey,),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("Truck Status",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
            ),
            const SizedBox(height: 15,),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    height: 350,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 10,),
                            Container(
                              height: 22,
                              width: 22,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const Dash(
                              direction: Axis.vertical,
                              length: 50,
                              dashLength: 100,
                              dashThickness: 2,
                              dashColor: Colors.black,
                            ),
                            Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,width: 1),
                                color: Colors.grey,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const Dash(
                              direction: Axis.vertical,
                              length: 50,
                              dashLength: 100,
                              dashThickness: 2,
                              dashColor: Colors.black,
                            ),
                            Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,width: 1),
                                color: Colors.grey,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WidgetProvider.getColumn("Load picked up"),
                            const Spacer(),
                            WidgetProvider.getColumn("In Transit"),
                            const Spacer(),
                            WidgetProvider.getColumn("Load Delivered"),
                            const Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15),
            //   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       const Text("Truck Status",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
            //       const SizedBox(height: 15,),
            //       SizedBox(
            //         height: 500,
            //         child: Row(
            //           children: [
            //             Column(
            //               children: [
            //                 const SizedBox(height: 10,),
            //                 Container(
            //                   height: 22,
            //                   width: 22,
            //                   decoration: const BoxDecoration(
            //                     color: Colors.black,
            //                     shape: BoxShape.circle,
            //                   ),
            //                 ),
            //                 const Dash(
            //                   direction: Axis.vertical,
            //                   length: 50,
            //                   dashLength: 100,
            //                   dashThickness: 2,
            //                   dashColor: Colors.black,
            //                 ),
            //                 Container(
            //                   height: 22,
            //                   width: 22,
            //                   decoration: BoxDecoration(
            //                     border: Border.all(color: Colors.black,width: 1),
            //                     color: Colors.grey,
            //                     shape: BoxShape.circle,
            //                   ),
            //                 ),
            //                 const Dash(
            //                   direction: Axis.vertical,
            //                   length: 50,
            //                   dashLength: 100,
            //                   dashThickness: 2,
            //                   dashColor: Colors.black,
            //                 ),
            //                 Container(
            //                   height: 22,
            //                   width: 22,
            //                   decoration: BoxDecoration(
            //                     border: Border.all(color: Colors.black,width: 1),
            //                     color: Colors.grey,
            //                     shape: BoxShape.circle,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             const SizedBox(width: 15,),
            //             Column(crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 WidgetProvider.getColumn("Load picked up"),
            //                 const Spacer(),
            //                 WidgetProvider.getColumn("In Transit"),
            //                 const Spacer(),
            //                 WidgetProvider.getColumn("Load Delivered"),
            //                 const Spacer(),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Padding(
            //   // height: MediaQuery.of(context).size.height * 0.48,
            //   // width: MediaQuery.of(context).size.width,
            //   padding: const EdgeInsets.symmetric(horizontal: 15),
            //   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       SizedBox(
            //         height: MediaQuery.of(context).size.height * 0.1,
            //         child: Row(crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Container(
            //               height: 22,
            //               width: 22,
            //               decoration: const BoxDecoration(
            //                 color: Colors.black,
            //                 shape: BoxShape.circle,
            //               ),
            //             ),
            //             const SizedBox(width: 15,),
            //             WidgetProvider.getColumn("Load picked up"),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         height: MediaQuery.of(context).size.height * 0.06,
            //       ),
            //       SizedBox(
            //         height: MediaQuery.of(context).size.height * 0.1,
            //         child: Row(crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Container(
            //               height: 22,
            //               width: 22,
            //               decoration: BoxDecoration(
            //                 border: Border.all(color: Colors.black,width: 1),
            //                 color: Colors.grey,
            //                 shape: BoxShape.circle,
            //               ),
            //             ),
            //             const SizedBox(width: 10,),
            //             WidgetProvider.getColumn("In Transit"),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         height: MediaQuery.of(context).size.height * 0.06,
            //       ),
            //       SizedBox(
            //         height: MediaQuery.of(context).size.height * 0.1,
            //         child: Row(crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Container(
            //               height: 22,
            //               width: 22,
            //               decoration: BoxDecoration(
            //                 border: Border.all(color: Colors.black,width: 1),
            //                 color: Colors.grey,
            //                 shape: BoxShape.circle,
            //               ),
            //             ),
            //             const SizedBox(width: 10,),
            //             WidgetProvider.getColumn("Load Delivered"),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         height: MediaQuery.of(context).size.height * 0.06,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
