import 'package:flutter/material.dart';
import 'package:ui_developing/screens/my_clipper.dart';

class PageNotFound404 extends StatelessWidget {
  const PageNotFound404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close_rounded,
              color: Colors.black,
              size: 27,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "404",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Page Not Found!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "We're sorry the page you requested could not be found. Please go back to the home page!",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              'assets/images/404.jpg',
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: const EdgeInsets.only(bottom: 40),
                color: const Color(0xFF2F182A),
                height: MediaQuery.of(context).size.height / 4.5,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 10)),
                  onPressed: () {},
                  child: const Text(
                    "GO HOME",
                    style: TextStyle(
                      color: Color(0xFF2F182A),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
