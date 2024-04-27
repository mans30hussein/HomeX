import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_x/core/util/styles.dart';

class CustomUserInfo extends StatelessWidget {
  const CustomUserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Hello",
                style: StylesApp.font16Madiam
                    .copyWith(color: const Color(0xff5E97DA), fontSize: 22)),
            Text(
              "Mohamed Hussein",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: StylesApp.font20Madiam.copyWith(
                color: const Color(0xff5E97DA),
                fontSize: 22.sp,
              ),
            )
          ],
        ),
        const Spacer(),
        // Image.asset("assets/images/app_icon.png"),
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: CircleAvatar(
            radius: 50.r,
            backgroundImage: const AssetImage('assets/images/avatar.png'),
          ),
        ),
      ],
    );
  }
}
