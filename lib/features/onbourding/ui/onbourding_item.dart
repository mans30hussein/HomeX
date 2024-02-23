import 'package:flutter/material.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/features/onbourding/logic/onbourding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbourdingItem extends StatefulWidget {
  OnbourdingItem({
    required this.model,
    super.key,
  });
  OnbourdingModel model;

  @override
  State<OnbourdingItem> createState() => _OnbourdingItemState();
}

class _OnbourdingItemState extends State<OnbourdingItem> {
  var bourdController = PageController();

  List<OnbourdingModel>? bourding;
  @override
  Widget build(BuildContext context) {
    return Container(
     
    height: 390,
    width: double.infinity,
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        )),
    child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      
      Row(
        children: [
          Text(
            '${widget.model.name} ',
            style:
                const TextStyle(fontSize: 20, overflow: TextOverflow.clip),
          ),
          //const Spacer(),
        
        ],
        
      ),
              ]),
    ),
          );
  }
}
