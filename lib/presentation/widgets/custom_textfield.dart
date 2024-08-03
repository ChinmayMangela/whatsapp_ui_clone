import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(

        decoration: InputDecoration(
          fillColor: const Color.fromRGBO(27, 37, 46, 1.0),
          filled: true,
          prefixIcon: const Icon(Icons.search, color: Colors.grey,),
          hintStyle: GoogleFonts.lato(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: 'Search..'
        ),
      ),
    );
  }
}
