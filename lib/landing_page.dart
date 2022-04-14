import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  _launchURL(String url) async {
    if(await canLaunch(url)){
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
            const SizedBox(height: 20,),
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                GestureDetector(
                  onTap: (){
                    _launchURL('https://www.facebook.com/profile.php?id=100008495197452');
                  },
                    child: Image.asset('assets/facebook.png', width: 20, height: 20,)
                ),
                const SizedBox(width: 12,),
                GestureDetector(
                  onTap: (){
                    _launchURL('https://www.instagram.com/dapo.lora/');
                  },
                    child: Image.asset('assets/instagram.png', width: 20, height: 20,)
                ),
                const SizedBox(width: 12,),
                GestureDetector(
                  onTap: (){
                    _launchURL('https://twitter.com/dapo_lora?s=09');
                  },
                    child: Image.asset('assets/twitter.png', width: 20, height: 20,)
                ),
              ],
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                _launchURL('https://www.linkedin.com/in/oladapodanielolatubosun/');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  gradient: LinearGradient(
                    colors: [Color(0xffdd5e89), Color(0xfff7bb97)]
                  )
                ),
                child: const Text ('Download my resume',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
