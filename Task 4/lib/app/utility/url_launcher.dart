import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static void launchDialer(Uri url) async {
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw new Exception('Application unable to open dialer.');
      }
    } catch (err) {
      throw err;
    }
  }
}
