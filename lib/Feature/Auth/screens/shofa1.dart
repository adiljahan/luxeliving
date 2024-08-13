// import 'package:flutter/material.dart'
//
// import 'package:http/http.dart' as http;
//
// class Shofa1 extends StatefulWidget {
//   const Shofa1({super.key});
//
//   @override
//   State<Shofa1> createState() => _Shofa1State();
// }
//
// class _Shofa1State extends State<Shofa1> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   Barcode? result;
//   QRViewController? controller;
//   @override
//   Widget build(BuildContext context) {
//        return Scaffold(
//       appBar: AppBar(
//         title: Text('Payment Scanner'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             flex: 5,
//             child: QRView(
//               key: qrKey,
//               onQRViewCreated: _onQRViewCreated,
//               overlay: QrScannerOverlayShape(
//                 borderColor: Colors.red,
//                 borderRadius: 10,
//                 borderLength: 30,
//                 borderWidth: 10,
//                 cutOutSize: 300,
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Center(
//               child: (result != null)
//                   ? Text('Scanned Code: ${result!.code}')
//                   : Text('Scan a code'),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   void _onQRViewCreated(QRViewController controller) {
//     setState(() {
//       this.controller = controller;
//     });
//     controller.scannedDataStream.listen((scanData) {
//       setState(() {
//         result = scanData;
//       });
//       _processPayment(scanData.code);
//     });
//   }
//
//   void _processPayment(String? code) async {
//     if (code != null) {
//       // Assuming your payment processing API endpoint is /process_payment
//       var url = Uri.parse('https://your-api-endpoint.com/process_payment');
//       var response = await http.post(url, body: {'code': code});
//       if (response.statusCode == 200) {
//         // Payment processed successfully
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Payment Successful')));
//       } else {
//         // Payment failed
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Payment Failed')));
//       }
//     }
//   }
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }
//
//
//
