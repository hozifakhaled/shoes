import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncher {
  final String facebookPageId = "fb://profile/100033932597045";

  Future<void> openFacebook() async {
    // String fbUrl;

    Uri url2 = Uri.parse(
        'https://www.facebook.com/profile.php?id=100033932597045&mibextid=ZbWKwL');
    if (!await launchUrl(url2)) {
      await launchUrl(url2);
    }
  }

  final String email = "example@gmail.com"; // البريد الإلكتروني المستلم
  final String subject = "Hello from Flutter"; // الموضوع
  final String body = "This is a test email from Flutter app.";
  Future<void> openGmail() async {
    final Uri gmailUri = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=$subject&body=$body',
    );

    try {
      // محاولة فتح تطبيق البريد الإلكتروني (Gmail أو أي تطبيق يدعم mailto)
      if (!await launchUrlString(gmailUri.toString())) {
        throw 'Could not launch Gmail';
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  final String phoneNumber =
      "01061665307"; // رقم الهاتف (بداية من 1 بدون + أو 0)
  final String message = "Hello from Flutter!"; // الرسالة المبدئية

  Future<void> openWhatsApp() async {
    final String url =
        "https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}";

    try {
      // محاولة فتح WhatsApp
      if (await launchUrlString(url)) {
       Uri uri = Uri.parse(url);
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}
