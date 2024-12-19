import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const kDuration = Duration(milliseconds: 600);

Future<void> openUrlLink(String url) async {
  await launchUrl(Uri.parse(url));
}

scrollToSection(BuildContext context, GlobalKey key) {
  Scrollable.ensureVisible(
    key.currentContext!,
    duration: kDuration,
    curve: Curves.easeInOut,
  );
}

void launchWhatsapp() async {
    // Add WhatsApp contact functionality here
    final phoneNumber = '919760320892'; // Remove the '+' prefix

    final Uri whatsappUrl =
        Uri.parse('https://api.whatsapp.com/send?phone=$phoneNumber');
    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl,
          mode: LaunchMode.platformDefault, webOnlyWindowName: '_blank');
    } else {
      throw 'Could not launch WhatsApp';
    }
  }

  Future<void> downloadFile() async {
    try {
      // Create a reference to the file you want to download
      final storageRef =
          FirebaseStorage.instance.ref().child('documents/RohitResume.pdf');
      String downloadUrl = await storageRef.getDownloadURL();
      print(downloadUrl);
      // Get the directory to save the file
      launchUrl(Uri.parse(downloadUrl));

      // Start downloading the file
    } on FirebaseException catch (e) {
      // Handle any errors
      print("Error downloading file: ${e.message}");
    }
  }