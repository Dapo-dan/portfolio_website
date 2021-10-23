import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffcc2b5e), Color(0xff753a88)]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(300,)),
              child: Image.asset('assets/DSC_0311.jpg', width: 200, height: 200,),
            ),
            const SizedBox(height: 30,),
            const Text ('Oladapo Olatubosun', style: TextStyle (
              color: Colors.black87,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox( height: 8,),
            Container (
              padding: const EdgeInsets.symmetric(horizontal: 30,),
              child:
              const Text (' Hi, I’m Olatubosun Oladapo Daniel 👀 I’m interested in Technical Development I’m currently learning Android development I’m looking to collaborate on ...',
                textAlign: TextAlign.center,
                style: TextStyle (
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),),
            ),
            const SizedBox(height: 20,),
            const Text ('Connect with me',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            Row (
              children: <Widget> [
                Image.asset('assets/facebook.png', width: 20, height: 20,),
                const SizedBox(width: 12,),
                Image.asset('assets/instagram.png', width: 20, height: 20,),
                const SizedBox(width: 12,),
                Image.asset('assets/meetup.png', width: 20, height: 20,),
                const SizedBox(width: 12,),
                Image.asset('assets/twitter.png', width: 20, height: 20,),
              ],
            ),
            const SizedBox(width: 20,),
            const Text ('Download my resume',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
