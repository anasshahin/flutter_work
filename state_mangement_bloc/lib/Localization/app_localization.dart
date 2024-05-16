import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class AppLocalizations{
  final Locale? locale;

  AppLocalizations({required this.locale});

  static const LocalizationsDelegate<AppLocalizations>delegate= AppLocalizationsDelegate();
  static AppLocalizations? of(BuildContext context){
    return Localizations.of(context, AppLocalizations);
  }// this aim to till flutter that this class is for Localizations
late Map<String,String> _localizedStrings;
  Future loadJsonLanguage() async {
    String jsonString = await rootBundle.loadString(
        'assets/lang/${locale?.languageCode}.json');

    late Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings =jsonMap.map((key,value){
      return MapEntry(key, value.toString());
    });
  }
  String translate(String key)=>_localizedStrings[key]??'';

}
class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations>{
  const AppLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) {
    return ['en','ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale)async {
    AppLocalizations localizations = AppLocalizations(locale: locale);
    await localizations.loadJsonLanguage();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) => false;
  // it can be true only when there multi delegates
  
}