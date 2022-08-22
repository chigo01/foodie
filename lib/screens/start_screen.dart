import 'package:flutter/material.dart';
import 'package:foodie/screens/apiviews.dart';
import 'package:foodie/utils/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStart extends StatefulWidget {
  const AppStart({Key? key}) : super(key: key);

  @override
  State<AppStart> createState() => _AppStartState();
}

class _AppStartState extends State<AppStart> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/olenka-kotyk-9x-PwjxC0Z8-unsplash.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40, left: 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Row(
              children: [
                Text(
                  'Healthy',
                  style: kfirstScreen,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'food',
                  style: kfirstScreen,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'is',
                  style: kfirstScreen,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'goooood',
                  style: GoogleFonts.poppins(
                      fontSize: 30,
                      color: kyellow,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: Text(
                """More than 10,000 recipes 
for every day and taste
                 """,
                style: kfirstScreen1,
              ),
            ),
            GetStartedButton(height: height, width: width)
          ]),
        ),
      ),
    );
  }
}

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          (MaterialPageRoute(
            builder: (BuildContext context) => const ApiContents(),
          )),
        );
        print('pressed');
      },
      child: Container(
          height: height * 0.07,
          width: width * 0.8,
          decoration: BoxDecoration(
            color: kyellow,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Center(
            child: Text(
              'let\'s get started',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          )),
    );
  }
}
