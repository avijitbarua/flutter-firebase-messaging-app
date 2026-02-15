// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter_plus/webview_flutter_plus.dart';
//
// class LoadFlutterAssetExample extends StatefulWidget {
//   const LoadFlutterAssetExample({super.key, required this.data});
//   final String data;
//
//   @override
//   State<LoadFlutterAssetExample> createState() =>
//       _LoadFlutterAssetExampleState();
// }
//
// class _LoadFlutterAssetExampleState extends State<LoadFlutterAssetExample> {
//   late WebViewControllerPlus _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = WebViewControllerPlus()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setBackgroundColor(const Color(0x00000000))
//       ..loadFlutterAssetServer('assets/index.html')
//       ..addJavaScriptChannel('CKEditorData',
//           onMessageReceived: (JavaScriptMessage message) {
//             if (kDebugMode) {
//               print("CKEditor data received: ${message.message}");
//             }
//           });
//
//     Timer(const Duration(seconds: 1), () => sendDataToWebView(widget.data));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           Row(
//             children: [
//               IconButton(
//                   onPressed: () {
//                     sendDataToWebView(widget.data);
//                   },
//                   icon: const Icon(Icons.edit)),
//             ],
//           ),
//         ],
//       ),
//       body: WebViewWidget(
//         controller: _controller,
//       ),
//     );
//   }
//
//   void sendDataToWebView(String data) async {
//     String jsonData = jsonEncode({"data": data});
//
//     // Pass jsonData as a string literal by wrapping in single quotes
//     _controller.runJavaScript("setEditorData('$jsonData');");
//
//     if (kDebugMode) {
//       print(jsonData);
//     }
//   }
//
// }
