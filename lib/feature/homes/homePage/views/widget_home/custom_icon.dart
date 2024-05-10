import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  const CustomIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, size: 30, color: Color(0xff2CA9BC),),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none_outlined, size: 36 , 
          color: Color(0xff7885FF),),
        ),
      ],
    );
  }
}
