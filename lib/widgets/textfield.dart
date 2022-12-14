import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.width,
    required this.controller,
  }) : super(key: key);

  final double width;
  final TextEditingController controller;

  getRecipe(String query){

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.9,
      child: TextField(
        style: const TextStyle(color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: KfoodContainerColor,
          hintText: 'Find your favorite recipe...',
          hintStyle: const TextStyle(color: Colors.white38),
          prefixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              size: 25,
              color: Colors.white38,
            ),
            onPressed: () {
              if(controller.text.isNotEmpty){
                getRecipe(controller.text);
                  print('just do it ');
              }else{
                print('don\'t do it');
              }
            },
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: KfoodContainerColor),
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
