import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:twitter/utils/input_box.dart";

class EnterOTP extends StatelessWidget {
  const EnterOTP({super.key});

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
                flex: 5,
                child: Container(
                  color: Colors.red,
                ),
              ),
              Flexible(
                flex: 6,
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
                        child: Text("Enter OTP",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              letterSpacing: -1,
                              fontSize: 34,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ))),
                      ),
                      Text(
                          "Please enter the OTP sent to number +91 90438 70363.",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ))),
                      const SizedBox(
                        height: 5,
                      ),
                      const InputBox(
                          hintText: "OTP", icon: Icons.alternate_email),
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
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ))
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
