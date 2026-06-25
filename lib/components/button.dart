import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(109, 140, 94, 91),
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 18,
              ),
            ),

            const SizedBox(width: 10),
            Icon(Icons.arrow_forward, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
