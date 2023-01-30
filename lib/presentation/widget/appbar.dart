import 'package:flutter/material.dart';

class ApplicationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ApplicationAppBar({
    this.leading,
    this.ending,
    this.rightPadding = 45,
    Key? key,
  }) : super(key: key);

  final Widget? leading, ending;
  final double rightPadding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 10,
            left: 45,
            right: rightPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              leading ?? const SizedBox.shrink(),
              ending ?? const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 45);
}
