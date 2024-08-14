import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_ui_flutter/controller/yt_controller.dart';
import 'package:youtube_ui_flutter/utils/yt_utils.dart';

class YoutubeScreen extends StatefulWidget {
  const YoutubeScreen({super.key});

  @override
  State<YoutubeScreen> createState() => _YoutubeScreenState();
}

class _YoutubeScreenState extends State<YoutubeScreen> {
  final YtController _ytController = Get.put(YtController());
  final YtController _ytFindController = Get.find<YtController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(title: Text(),),

        body: GetBuilder<YtController>(
          init: YtController(), // Optional: to initialize if not done in main()
          builder: (controller) {
            return SafeArea(
                child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///----Sample Image for learning purpose
                        Container(
                            width: Get.width,
                            height: 250,
                            // color: Colors.red,
                            child: Center(
                                child: Image.asset(
                                  'images/my_image.jpg',
                                  height: 250,
                                  width: Get.width,
                                  fit: BoxFit.fill,
                                ))),

                        SizedBox(
                          width: 150,
                          height: 1,
                          child: Divider(
                            height: 5,
                            thickness: 3,
                            color: Colors.red,
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  ' #Flutter ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Flutter for Beginner`s',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  ' #Getx ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1M views - 4 years ago',
                              style: TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            Text(
                              ' ...more',
                              style: TextStyle(fontSize: 10, color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //-----like and unlike icons
                            Container(
                              width: Get.width * 0.40,
                              // height: 10,
                              // color: Colors.lightGreenAccent,
                              child: Center(
                                child: Wrap(
                                  spacing: 15,
                                  runSpacing: 20,
                                  children: [
                                    for (int i = 0; i < workytUtils.length; i++)
                                      Obx(() {
                                        return Container(
                                            width: 65,
                                            height: 80,
                                            child: Center(
                                                child: Column(
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        _ytController.onClickIsLikeIsUnLike(i);
                                                        // _ytFindController.isBtnClicked=workytUtils[i].name;
                                                      },
                                                      child: Center(
                                                        child: Image.asset(
                                                          workytUtils[i].image,
                                                          height: 30,
                                                          width: 30,
                                                          fit: BoxFit.fill,
                                                          color: _ytFindController.isLike == true && i==0
                                                              ? Colors.blue
                                                              : _ytFindController.isUnLike == true && i==1
                                                              ? Colors.red : Colors.grey,
                                                        ),
                                                      ),
                                                    ),
                                                    Text('${workytUtils[i].name}'),
                                                  ],
                                                )));
                                      }),
                                  ],
                                ),
                              ),
                            ),
                            //other icons
                            Container(
                              width: Get.width * 0.60,
                              // height: 10,
                              // color: Colors.lightGreenAccent,
                              child: Center(
                                child: Wrap(
                                  spacing: 15,
                                  runSpacing: 20,
                                  children: [
                                    for (int j = 0; j < workytUtils2.length; j++)

                                    // Obx(() {
                                    //   return
                                      Container(
                                          width: 65,
                                          height: 80,
                                          child: Center(
                                              child: Column(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      Get.defaultDialog(title: 'Clicked',content: Text('${workytUtils2[j].name}'));
                                                    },
                                                    child: Center(
                                                      child: Image.asset(
                                                        workytUtils2[j].image,
                                                        height: 30,
                                                        width: 30,
                                                        fit: BoxFit.fill,
                                                        color:  Colors.grey,
                                                      ),
                                                    ),
                                                  ),
                                                  Text('${workytUtils2[j].name}'),
                                                ],
                                              )))
                                    // }),
                                  ],
                                ),
                              ),
                            ),
                            //
                          ],
                        ),

                        Container(
                            width: Get.width,
                            height: 60,
                            // color: Colors.lightGreenAccent,
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: Get.width * 0.10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white),
                                  child: Image.asset(
                                    'images/youtube.png',
                                    height: 30,
                                    width: 30,
                                    fit: BoxFit.contain,
                                    // color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: Get.width * 0.50,
                                  margin: EdgeInsets.only(left: 10, top: 6),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Marimuthu FlutterDev',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text(
                                        '4.31M subscriber`s',
                                        style: TextStyle(fontSize: 15, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    _ytController.onSubscribeBtn();
                                  },
                                  child: Container(
                                    height: 30,
                                    width: Get.width * 0.29,
                                    margin: EdgeInsets.only(left: 20),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(12)),
                                    child: Center(
                                        child:
                                        Obx((){
                                          if(_ytFindController.isSubscribe==true){
                                            return Text('Subscribed',style: TextStyle(color: Colors.lightGreenAccent));
                                          }else{
                                            return Text('Subscribe',style: TextStyle(color: Colors.orangeAccent));
                                          }
                                        })

                                        // Obx((){return Text(_ytFindController.isSubscribe.toString(),
                                        //   style: TextStyle(color: Colors.white),
                                        // );})


                                  ),
                                  ),
                                ),

                                // Container(
                                //   height: 70,
                                //   child: Image.asset('images/bell.png',
                                //     height: 30,
                                //     width: 30,
                                //     fit: BoxFit.contain,
                                //     // color: Colors.grey,
                                //   ),
                                // ),
                                // Text('jhjg'),
                              ],
                            )),

                        Center(
                          child: Container(
                            height: 100,
                            width: Get.width - 30,
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'comments',
                                        style: TextStyle(color: Colors.black87),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '1K',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.black54,
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Center(
                                            child: Text(
                                              'A',
                                              style: TextStyle(color: Colors.white),
                                            )),
                                      ),
                                      Text(
                                        'Thank`s for this video',
                                        style: TextStyle(color: Colors.black87, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )));
          },
        ),
    );
  }
}
