import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:permission_handler/permission_handler.dart';

class QRScan extends StatefulWidget {
  const QRScan({Key? key}) : super(key: key);

  @override
  State<QRScan> createState() => _QRScanState();
}

class _QRScanState extends State<QRScan> {
  String text = "QR Scan";

  Future<void> scanQR() async {
    // Check and request camera permission
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      if (await Permission.camera.request().isGranted) {
        // Permission granted
      } else {
        // Permission denied
        setState(() {
          text = "Camera permission denied";
        });
        return;
      }
    }

    try {
      String? scanResult = await scanner.scan();
      if (scanResult != null) {
        setState(() {
          text = scanResult;
        });
      } else {
        setState(() {
          text = "Scan cancelled";
        });
      }
    } catch (e) {
      setState(() {
        text = "Error occurred while scanning";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR Scan"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            ElevatedButton(
              onPressed: scanQR,
              child: const Text("Scan"),
            ),
          ],
        ),
      ),
    );
  }
}
