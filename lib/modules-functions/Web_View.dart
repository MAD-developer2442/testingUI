import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {

  @override
  _WebViewAppState createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewPage> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
        centerTitle: true,
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://amazon.com',
        onWebViewCreated: (controller) {
          this.controller = controller;
        },
        onPageStarted: (url) {
          print('New Website: $url');
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.import_export,
          size: 32,
        ),
        onPressed: () async {
          controller.evaluateJavascript(
              "document.getElementByTagName('header')[0].style.display='none'");
          final url = await controller.currentUrl();
          print('Previous Website: $url');
          controller.loadUrl('https://www.youtube.com');
        },
      ),
    );
  }
}
