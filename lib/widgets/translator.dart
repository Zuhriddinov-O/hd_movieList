import 'package:translator/translator.dart';

late GoogleTranslator googleTranslator = GoogleTranslator();
String text = "Google";

void translator() {
  googleTranslator = GoogleTranslator();
  googleTranslator.translate(text, to: "ru").then((value) {
    text = value.toString();
  });
}//GoogleTranslator
