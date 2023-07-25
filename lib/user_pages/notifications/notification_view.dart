import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../instants/colors.dart';

class UserNotification extends StatelessWidget {
  const UserNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 18.0, top: 20),
          child: CircleAvatar(
            radius: 0,
            backgroundColor: AppColors.primary,
            child: BackButton(color: AppColors.white,
            ),

          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Notifications   ',
            style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w500,
                fontSize: 24,
                letterSpacing: 0
            ),
          ),
        ),
      ),
      body: Column(
        children: [
        ],
      ),
    );
  }
}
  /*Widget ListView(){
    return ListView.separated(
        itemBuilder: (context,index){
          return ListViewItem(index);
          },
        separatorBuilder: (context,Index){
          return Divider(height: 0,);
        },
        itemCount: 15);
  }
  Widget ListViewItem(int index){
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: 13,vertical: 10),
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          prefixIcon(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  message(index),
                  timeAndDate(index),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget prefixIcon(){
    return Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300
      ),
      child: Icon(Icons.notifications,
        size: 25,
        color: Colors.grey.shade700,
      ),
    );
  }
  Widget message(int index){
    return Container(
      child: RichText(
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          text: 'Message',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
          children: [
            TextSpan(
              text:'Notification Description',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              )
            )
          ]
        ),
      ),
    );
  }
  Widget timeAndDate(int index){
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '21-8-2023',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          Text(
            '07:10 AM',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}*/
