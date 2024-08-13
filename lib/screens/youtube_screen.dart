import 'package:flutter/material.dart';
import 'package:youtube_ui_flutter/utils/yt_utils.dart';

class YoutubeScreen extends StatefulWidget {
  const YoutubeScreen({super.key});

  @override
  State<YoutubeScreen> createState() => _YoutubeScreenState();
}

class _YoutubeScreenState extends State<YoutubeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(title: Text(),),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 500,
              height: 250,
              // color: Colors.red,
              child: Center(child: Image.asset(
                'images/my_image.jpg',
                height: 250,
                width: 410,
                fit: BoxFit.fill,
              ))),

          SizedBox(
            width: 250,
            height: 3,
            child: Divider(
              height: 5,
              color: Colors.red,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Flutter for beginer`s',style: TextStyle(fontSize: 20),),
              Icon(Icons.arrow_drop_down)
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('1M views - 4 years ago',style: TextStyle(fontSize: 15,color: Colors.grey),),
            ],
          ),

          Container(
            width: 450,
            height: 60,
            // color: Colors.lightGreenAccent,
            child: Center(
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  for (int i = 0; i < workytUtils.length; i++)
                    Container(
                        width: 65,
                        height: 80,
                        // color: Colors.red,
                        child: Center(child: Column(
                          children: [
                            Center(
                              child: Image.asset(
                                      workytUtils[i].image,
                                height: 30,
                                width: 30,
                                fit: BoxFit.fill,
                                color: workytUtils[i].name == '1M' ? Colors.black : Colors.grey,
                              ),
                            ),
                            Text('${workytUtils[i].name}'),
                          ],
                        )))
                ],
              ),
            ),
          ),

          Container(
            width: 450,
            height: 75,
            // color: Colors.lightGreenAccent,
            child: Row(
              children: [
                Container(
                  height: 40,
                  child: Image.asset('images/youtube.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                    // color: Colors.grey,
                  ),
                ),
                Container(
                  height: 70,
                  margin: EdgeInsets.only(left: 10,top: 25),
                  child: Column(
                    children: [
                      Text('Marimuthu FlutterDev',style: TextStyle(fontSize: 20),),
                      Text('4.31M subscriber`s',style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 100,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('subscribe',style: TextStyle(color: Colors.white),)),
                ),

                Container(
                  height: 70,
                  child: Image.asset('images/bell.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                    // color: Colors.grey,
                  ),
                ),
                // Text('jhjg'),
              ],
            )
          ),



          Center(
            child: Container(
              height: 80,
              width: 380,
              // margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('comments',style: TextStyle(color: Colors.black87),),
                      Text('1K',style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text('A',style: TextStyle(color: Colors.white),)),
                      ),
                      Text('Thank`s for this video',style: TextStyle(color: Colors.black87,fontSize: 15),),
                    ],
                  ),
                ],
              ),
            ),
          ),


        ],
      ))),
    );
  }
}
