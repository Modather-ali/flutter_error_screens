import 'package:flutter/material.dart';
import 'package:ui_developing/screens/my_clipper.dart';

class LocationError extends StatelessWidget {
  const LocationError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 100,
            child: Image.asset(
              'assets/images/location_error.png',
              width: MediaQuery.of(context).size.width,
            ),
          ),
          const Positioned(
            top: 80,
            left: 20,
            child: Text(
              "Error no Location access",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 3,
            left: 40,
            right: 40,
            child: const Text(
              "You must enable location access to use this feature",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 4,
            left: MediaQuery.of(context).size.width / 3,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {},
              child: const Text("ENABLE"),
            ),
          )
        ],
      ),
    );
  }
}
