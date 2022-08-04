import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Nama :',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Tadin',
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
    );
  }
}
