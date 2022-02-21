import 'package:flutter/material.dart';

class NoConnection extends StatelessWidget {
  const NoConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 50,
            child: Image.asset(
              'assets/images/no-connection.jpg',
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 6,
            left: 30,
            child: Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "No Connection",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Your internet connection was interrupted, Please retry",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      onPressed: () {},
                      child: const Text("RETRY"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
