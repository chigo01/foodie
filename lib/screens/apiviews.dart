import 'package:flutter/material.dart';
import 'package:foodie/utils/constant.dart';
import 'package:foodie/widgets/tabbar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/textfield.dart';

class ApiContents extends StatefulWidget {
  const ApiContents({Key? key}) : super(key: key);

  @override
  State<ApiContents> createState() => _ApiContentsState();
}

class _ApiContentsState extends State<ApiContents> {
  late TextEditingController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kbackgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 19),
          child: Container(
            // child: TextField(),
            decoration: BoxDecoration(
              color: kbackgroundColor,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text('Hello Kristin', style: kfirstScreen1),
                  subtitle: Text(
                    'What do you want to cook today?',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: KfoodContainerColor,
                    ),
                  ),
                  trailing: const CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        AssetImage('assets/images/pexels-pixabay-415829.jpg'),
                  ),
                ),
                const SizedBox(height: 20),
                TextFieldWidget(width: width, controller: controller),


                Expanded(
                  child: TabBarWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
