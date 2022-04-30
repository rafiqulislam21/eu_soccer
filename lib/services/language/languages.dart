import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'title': 'All about clubs',
      'change_theme': "Change Theme",
      'light': "Light",
      'dark': "Dark",
      'change_language': "Change Language",
      'english': "English",
      'german': "German",
      'million': "Million"
    },
    'de_DE': {
      'title': 'All about clubs',
      'change_theme': "Design ändern",
      'light': "Licht",
      'dark': "dunkel",
      'change_language': "Sprache ändern",
      'english': "Englisch",
      'million': "Millionen",
    }
  };
}