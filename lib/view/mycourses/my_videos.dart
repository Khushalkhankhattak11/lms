import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splashapp/Controller/login_controller.dart';
import 'package:splashapp/model/my_courses_model.dart';
import 'package:splashapp/model/video_model.dart';
import 'package:splashapp/values/auth_api.dart';
import 'package:http/http.dart' as http;
import 'package:splashapp/view/mycourses/my_course_detail.dart';
import 'package:splashapp/view/mycourses/video_player.dart';
import 'package:splashapp/widget/dasbhoard_card.dart';
import 'package:splashapp/widget/dasbhoard_card_two.dart';
import 'package:splashapp/widget/video_card.dart';

class MyVideos extends StatefulWidget {
  String id;
  MyVideos( this.id, {super.key});

  @override
  State<MyVideos> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyVideos> {
  String? token;
  List<VideoModel> myCoursesList = [];
  bool boolData = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Lectures"),
      ),
      body: boolData
          ? ListView.builder(
              shrinkWrap: true,
              itemCount: myCoursesList[0].data?.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Get.to(()=>YoutubePlayerDemo(urll:myCoursesList[0].data![index].videoName!));
                  },
                  child: VideoCard(
                    id: myCoursesList[0].data![index].id,
                    catName: myCoursesList[0].data![index].videoTitle,
                     name:myCoursesList[0].data![index].videoName,
                    description: myCoursesList[0].data![index].videoType,
                    slug: myCoursesList[0].data![index].duration,
                    seat: myCoursesList[0].data![index].videoName,
                    registermethod: myCoursesList[0].data![index].videoName,
                  ),
                );
              })
          :const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  @override
  void initState() {
    super.initState();
    getTokenAndFetchInvoice();
  }

  Future<void> getTokenAndFetchInvoice() async {
    token = await LoginController().getTokenFromHive();
    print('Token: $token');
    getMyCourseAPI();
  }

  void getMyCourseAPI() async {
    try {
      // final Map<String, dynamic> requestData = {
      //   "invoice_id": widget.invoice_id,
      // };



      // final String requestBody = jsonEncode(requestData);

      final res = await http.post(
        Uri.parse(AuthApi.videoLecturesApi),
        headers: {
          'Authorization': 'Bearer $token', // Use the retrieved token

        },
        body: {
          "course_id":widget.id,
        }
      );

      print('Response Status Code: ${res.statusCode}');
      print('Response Body: ${res.body}');

      if (res.statusCode == 200) {
        if (res.body.isNotEmpty) {
          final mydata = jsonDecode(res.body);
          print('Parsed Data: $mydata');
          myCoursesList.add(VideoModel.fromJson(mydata));
          setState(() {
            boolData = true;
          });
        } else {
          throw Exception('Empty response');
        }
      } else {
        print('Error: ${res.statusCode}');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
