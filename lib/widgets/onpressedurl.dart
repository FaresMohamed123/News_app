// ignore_for_file: deprecated_member_use, non_constant_identifier_names, avoid_print

import 'package:url_launcher/url_launcher.dart';

Future<void> OnPressedUrl(String uri) async {

 final Uri url = Uri.parse(uri);
 if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
}
 