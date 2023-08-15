import 'package:ezpay/component/colors.dart';
import 'package:flutter/cupertino.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final Function()? onTap;
  final bool? isBorder;
  const AppLargeButton({Key? key,required this.text,
    this.backgroundColor:AppColor.mainColor,
    this.isBorder:false,
    this.onTap,
    this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 30,right: 30),
        height: 50,
        width: MediaQuery.of(context).size.width-60,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: AppColor.mainColor
          )
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: textColor
            ),
          ),
        ),
      ),
    );
  }
}
