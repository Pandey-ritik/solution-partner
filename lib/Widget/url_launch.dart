import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class launc{
  Future makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
  Future<void> launchInBrowserView(url) async {
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }
  launchWhatsapp(context,String whatsappp) async {
    var whatsapp = "+91 ${whatsappp}";
    var whatsappAndroid = Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
    if (await canLaunchUrl(whatsappAndroid,)) {
      await launchUrl(whatsappAndroid,);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("WhatsApp is not installed on the device"),
        ),
      );
    }
  }
  void launchMap(String address) async {
    String query = Uri.encodeComponent(address);
    String googleUrl = "https://www.google.com/maps/search/?api=1&query=$query";

    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    }
  }
  Future<void> makePhoneEmail(String email,title, message) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: email,
      //query: 'subject=$title&body=$message',
    );
    var Url = launchUri.toString();
    await launchUrl(Uri.parse(Url));
  }
}