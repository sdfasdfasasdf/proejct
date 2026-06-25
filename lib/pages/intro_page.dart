import 'package:flutter/material.dart';
import 'package:forma_ai/components/button.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 129, 47, 47),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 25),
            // shop name
            Text(
              'Kabdaky',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
                height: 2,
              ),
            ),

            const SizedBox(height: 25),

            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset(
                'lib/images/image.png',
                width: 300,
                height: 300,
              ),
            ),

            const SizedBox(height: 25),

            // title
            Text(
              'Welcome to Kabdaky',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            // subtitle
            Text(
              'Feel the taste of the most popular Japanese food from anywehere and anytime',
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),

            const SizedBox(height: 25),

            //get started
            MyButton(
              text: 'Get Started',
              onTap: () {
                // Handle button tap
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
