import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/model/login_user_model.dart';
import 'package:mini_project/screen/register_screen/register_screen.dart';
import 'package:mini_project/theme.dart';
import 'package:provider/provider.dart';
import 'package:mini_project/provider/login_user_provider.dart';
import '../home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<LoginUserProvider>(context);

    void showError(String massage) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(massage),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 64,
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/image/login_image.png',
                    width: 245,
                    height: 250,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Email Addres',
                  style: GoogleFonts.openSans(
                    color: const Color(0xff17171A),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    fillColor: const Color(0xffF3F3F3),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(71),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Email',
                    hintStyle: GoogleFonts.openSans(
                      color: greyColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Password',
                  style: GoogleFonts.openSans(
                    color: const Color(0xff17171A),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: const Color(0xffF3F3F3),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(71),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.openSans(
                      color: greyColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 360,
                  height: 55,
                  child: isLoading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: greenColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60),
                            ),
                          ),
                          onPressed: () async {
                            if (emailController.text.isEmpty ||
                                passwordController.text.isEmpty) {
                              showError('Semua filde tidak boleh kosong');
                            } else {
                              setState(
                                () {
                                  isLoading = true;
                                },
                              );
                              LoginUser? user =
                                  await userProvider.authService.login(
                                emailController.text,
                                passwordController.text,
                              );

                              setState(() {
                                isLoading = false;
                              });

                              if (user == null) {
                                showError('Email atau Password salah');
                              } else {
                                userProvider.user = user;
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                              }
                            }
                          },
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.openSans(
                              color: whiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 360,
                  height: 55,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0x0ffcfcfc),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: greenColor.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, Animation<double> animation,
                                  Animation<double> secondaryAnimation) =>
                              const RegisterScreen(),
                          transitionDuration: const Duration(seconds: 1),
                          transitionsBuilder: (
                            context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child,
                          ) =>
                              SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(1, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'Create New Account',
                      style: GoogleFonts.openSans(
                        color: const Color(0xffCFCFCF),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
