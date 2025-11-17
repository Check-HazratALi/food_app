import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/utils/dimension.dart';

class ExpandedTextWidget extends StatefulWidget {
  const ExpandedTextWidget({super.key, required this.text});
  final String text;

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimension.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(
        textHeight.toInt() + 1,
        widget.text.length,
      );
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? Text(firstHalf)
          : SingleChildScrollView(
            child: Column(
                children: [
                  Text(
                    hiddenText ? (firstHalf + "...") : (firstHalf + secondHalf),
                    style: TextStyle(
                      height: 1.8,
                      fontSize: Dimension.font16,
                      color: Colors.black54,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        hiddenText = !hiddenText;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          hiddenText ? "Show more" : "Show less",
                          style: const TextStyle(color: Color(0xFF89dad0)),
                        ),
                        Icon(
                          hiddenText
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color: const Color(0xFF89dad0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ),
    );
  }
}
