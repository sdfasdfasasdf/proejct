import 'package:flutter/material.dart';
import 'package:forma_ai/theme/colors.dart';
import 'package:forma_ai/components/button.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.black),
        title: Text('Tokyo', style: TextStyle(color: Colors.grey[700])),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: PrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.symmetric(vertical: 25),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Get 15% Promo',
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(height: 30),
                        MyButton(text: 'Redeem', onTap: () {}),
                      ],
                    ),
                    Image.asset(
                      'lib/images/image.png',
                      width: 150,
                      height: 150,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
