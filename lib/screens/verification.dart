import 'package:ewallet/constants.dart';
import 'package:ewallet/screens/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class Verfications extends StatefulWidget {
  const Verfications({Key? key}) : super(key: key);
  static const routeName = '/verifications';

  @override
  State<Verfications> createState() => _VerficationsState();
}

class _VerficationsState extends State<Verfications> {
  final controller = TextEditingController();

  final focusNode = FocusNode();

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const borderColor = Color.fromRGBO(30, 60, 87, 1);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: GoogleFonts.poppins(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(),
    );

    final cursor = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 56,
          height: 3,
          decoration: BoxDecoration(
            color: borderColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
    final preFilledWidget = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 56,
          height: 3,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );

    return Scaffold(
      body: Pinput(
        length: 6,
        pinAnimationType: PinAnimationType.slide,
        controller: controller,
        focusNode: focusNode,
        defaultPinTheme: defaultPinTheme,
        showCursor: true,
        cursor: cursor,
        preFilledWidget: preFilledWidget,
        onSubmitted: (pin) async {
          // final user = await FirebaseAuth.instance.currentUser!.uid;
          Navigator.pushReplacementNamed(
            context,
            HomePage.routeName,
          );
        },
      ),
    );
  }
}
