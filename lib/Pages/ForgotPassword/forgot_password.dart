import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:twitter/utils/input_box.dart";

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(),
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
                              Text("Forgot",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    fontSize: 34,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                    fontWeight: FontWeight.w600,
                                  ))),
                              Text("Password?",
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

                        Text(
                            "Don't worry! It happens. Please enter the address associated with your account.",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ))),

                        const SizedBox(
                          height: 5,
                        ),
                        const InputBox(
                            hintText: "Mail ID", icon: Icons.alternate_email),
                        // const InputBox(hintText: "Password", icon: Icons.lock),

                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("Submit",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
