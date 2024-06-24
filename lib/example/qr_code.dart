import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ExampleQRCode extends StatelessWidget {
  const ExampleQRCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImageView(
          data: "link",
          size: 300,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          version: 6,
          errorCorrectionLevel: QrErrorCorrectLevel.M,
        ),
      ),
    );
  }
}
