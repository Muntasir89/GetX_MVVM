import 'package:get/get.dart';

class Language extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {'email_hint': "Email"},
        'ur_PK': {'email_hint': "ای میل ایڈریس"},
        'bn_BD': {'email_hint': "ইমেইল"}
      };
}
