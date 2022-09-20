import 'package:flutter/material.dart';

class ApplicationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ApplicationAppBar({
    this.leading,
    Key? key,
  }) : super(key: key);

  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 45,
            right: 45,
          ),
          child: Row(
            children: <Widget>[
              leading ?? const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 45);
}
