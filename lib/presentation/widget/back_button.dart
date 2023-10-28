import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    Key? key,
    this.onTap,
    required this.icon,
  }) : super(key: key);

  final void Function()? onTap;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      child: GestureDetector(
        onTap: onTap ?? Navigator.of(context).pop,
        child: Container(
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            color: Color(0xFFCCCDCF),
            shape: BoxShape.circle,
          ),
          child: icon ??
              const Icon(
                Icons.chevron_left_rounded,
                size: 28,
                color: Colors.black,
              ),
        ),
      ),
    );
  }
}
