import 'package:flutter/material.dart';
import 'package:move/trackTruckFragment.dart';
import 'package:move/widgetProvider.dart';

class TrackLoadFragment extends StatefulWidget {
  const TrackLoadFragment({Key? key}) : super(key: key);

  @override
  State<TrackLoadFragment> createState() => _TrackLoadFragmentState();
}

class _TrackLoadFragmentState extends State<TrackLoadFragment> {
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
        title: const Text("Track Load",style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  WidgetProvider.getLocation(),
                  const SizedBox(height: 40,),
                  WidgetProvider.getRowWidget("Truck Fare", "\u{20B9}50.00"),
                  const SizedBox(height: 5,),
                  WidgetProvider.getRowWidget("Total Distance", "20 km"),
                  const SizedBox(height: 5,),
                  WidgetProvider.getRowWidget("Weight of Load", "200 kg"),
                  const SizedBox(height: 20,),
                  Row(
                    children: const [
                      Text("Total amount",style: TextStyle(color: Colors.black),),
                      Spacer(),
                      Text("\u{20B9}1000.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(thickness: 2,color: Colors.grey,),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("Truck Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                            ),
                          ),
                        ),
                        // const SizedBox(width: 10,),
                        const Expanded(
                          flex: 3,
                          child: ListTile(
                            title: Text("Truck and Driver"),
                            subtitle: Text("Details"),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => const TrackTruckFragment()));
                            },
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                            child: const Text("Check Status",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
