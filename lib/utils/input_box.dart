import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class InputBox extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const InputBox({super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              // border: InputBorder.none,
              // border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              hintStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 136, 136, 136),
                fontWeight: FontWeight.w400,
              )),
            ),
          ),
        ),
      ],
    );
  }
}
