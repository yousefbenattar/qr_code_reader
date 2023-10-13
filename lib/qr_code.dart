import 'package:flutter/material.dart';
import 'package:qr_code_reader/qr_image.dart';

import 'qr_scanner.dart';

class QRCode extends StatefulWidget {
  const QRCode({super.key});
  @override
  State<QRCode> createState() => _QRCodeState();
}

class _QRCodeState extends State<QRCode> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Scanner'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter Your URL'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder : (context) => QRImage(controller: controller),
                ),
              );
            },
            child: const Text('GENERATE QR CODE'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder : (context) =>const QRSCANNER(),
                ),
              );},
            child: const Text('SCAN QR CODE'),
          ),
        ],
      ),
    );
  }
}
