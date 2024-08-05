import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:twitter/Pages/ForgotPassword/forgot_password.dart";
import "package:twitter/utils/input_box.dart";

class Login extends StatelessWidget {
  
  const Login({super.key,});

  @override
  Widget build(BuildContext context) {
    handleClickRegister() {
      Navigator.pop(context);
    }

    handleClickForgetPassword() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ForgotPassword()));
    }

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
                flex: 7,
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
                        // fit: BoxFit.fitWidth,
                        child: Text("Login",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 34,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ),
                      const InputBox(
                          hintText: "Mail ID", icon: Icons.alternate_email),
                      const InputBox(hintText: "Password", icon: Icons.lock),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: handleClickForgetPassword,
                            child: Text("Forget Password?",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blue[600],
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Login",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      // const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "OR",
                          // textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      // const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
                        child: ListTile(
                          titleAlignment: ListTileTitleAlignment.center,
                          leading:
                              const Icon(Icons.facebook, color: Colors.blue),
                          title: Text(
                            "Login with Google",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "New to twitter?",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            )),
                          ),
                          TextButton(
                            onPressed: handleClickRegister,
                            child: Text(
                              "Register",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.blue[600],
                                fontWeight: FontWeight.w600,
                              )),
                            ),
                          )
                        ],
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
