import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../utils/constant.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.url}) : super(key: key);
  final String? url;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String? finalUrl ;
  @override
  void initState() {
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
    // for replacing the http to https
    finalUrl = widget.url!;
    if(widget.url!.contains('http://')){
      finalUrl = widget.url?.replaceAll("http://","https://");
      // print(finalUrl + "this is final url");
    }
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kbackgroundColor,
        title: Text('Foodie'),
      ),
      body: SafeArea(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: finalUrl,


      zoomEnabled: false,
        ),
      ),
    );
  }
}
