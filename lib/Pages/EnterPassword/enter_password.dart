import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:twitter/utils/input_box.dart";

class EnterPassword extends StatelessWidget {
  final Function handleSubmit;
  final TextEditingController password;
  final TextEditingController confirmPassword;
  const EnterPassword({super.key, required this.handleSubmit, required this.password, required this.confirmPassword});

  @override
  Widget build(BuildContext context) {


    handleClick() {
      if (password.text.isNotEmpty && confirmPassword.text.isNotEmpty) {
        if (password.text == confirmPassword.text) {
          //call the function
          handleSubmit();
        } else {
          //show error
        }
      } else {
        //show error
      }
    }


    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Flexible(
                  flex: 5,
                  child: Container(
                    color: Colors.red,
                  )),
              Flexible(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("Enter Password",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 34,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ))),
                        ),
                        const InputBox(hintText: "Password", icon: Icons.lock),
                        const InputBox(
                            hintText: "Confirm Password", icon: Icons.lock),
                        Container(
                          padding: const EdgeInsets.all(20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(10)),
                          child: GestureDetector(
                            onTap: handleClick,
                            child: Text(
                              "Submit",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
