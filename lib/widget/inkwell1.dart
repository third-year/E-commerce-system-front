import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton(
      {Key? key,
        required this.onTap,
        this.h = 60,
        this.w = 120,
        this.r = 20,
        this.s = 16,
        this.color = Colors.indigo,
        this.text = '',
        this.textColor = Colors.white,
        this.icon})
      : super(key: key);
  final void Function() onTap;
  double h;
  double w;
  double r;
  double s;
  Color color;
  String text;
  Color textColor;
  IconData? icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
          alignment: Alignment.center,
          height: h,
          width: w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(r),
            color: color,
          ),
          child: text != '' && icon == null
              ? Text(
            text,
            style: TextStyle(
                fontSize: s,
                fontWeight: FontWeight.bold,
                color: textColor),
          )
              : text == '' && icon != null
              ? Icon(icon)
              : Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 7,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: s,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
            ],
          )),
    );
  }
}
