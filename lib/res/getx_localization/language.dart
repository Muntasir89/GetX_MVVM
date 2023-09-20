import 'package:get/get.dart';

class Language extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'internet_exception':
              "We're unable to show results.\nPlease check your data\nconnection.",
          'general_exception':
              "We're unable to process your request. \n Please try again",
          'welcome_back': "Welcome\nBack",
          'login': 'Login',
          'email_hint': 'Enter Email',
          'password_hint': 'Enter Password'
        },
        'ur_PK': {'email_hint': "ای میل ایڈریس"},
        'bn_BD': {'email_hint': "ইমেইল"}
      };
}
