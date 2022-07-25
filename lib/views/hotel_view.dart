// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: (size.width) * 0.6,
      height: AppLayout.getHeight(350),
      margin: const EdgeInsets.only(right: 17, top: 5, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.red.shade200,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              color: Styles.bgColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            hotel['place'],
            style: Styles.headlineStyle2.copyWith(color: Styles.kakicolor),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            hotel['destination'],
            style: Styles.headlineStyle4.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "\$ ${hotel['price']} / Night",
            style: Styles.headlineStyle1.copyWith(color: Styles.kakicolor),
          ),
        ],
      ),
    );
  }
}
