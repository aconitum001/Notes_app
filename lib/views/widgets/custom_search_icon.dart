import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.onPressed});

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.15),
        borderRadius: BorderRadiusDirectional.circular(16),
      ),
      child: IconButton(
        padding: const EdgeInsets.all(0),
        onPressed: onPressed,
        icon: Icon(icon),
      ),
    );
  }
}
