import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:twitter/utils/input_box.dart";

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Flexible(
                flex: 4,
                child: Container(
                  color: Colors.red,
                ),
              ),
              Flexible(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        // width: MediaQuery.of(context).size.width * 0.8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Reset",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 34,
                                  color: Colors.black,
                                  letterSpacing: -1,
                                  fontWeight: FontWeight.w600,
                                ))),
                            Text("Password",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 34,
                                  color: Colors.black,
                                  letterSpacing: -1,
                                  fontWeight: FontWeight.w600,
                                )))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const InputBox(
                          hintText: "New Password", icon: Icons.lock),
                      const InputBox(
                          hintText: "Confirm Password", icon: Icons.lock),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Submit",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
