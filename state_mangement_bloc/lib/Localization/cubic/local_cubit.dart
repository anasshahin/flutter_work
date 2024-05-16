
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:state_mangement_bloc/Localization/language_cache_helper.dart';

part 'local_state.dart';

class LocalCubit extends Cubit<LocalState> {
  LocalCubit() : super(LocalInitial());

  Future<void> getSavedLanguage() async {
    final String cachedLanguageCode =
        await LanguageCacheHelper().getCachedLanguageCode();
    emit(ChangeLocalState(local: Locale(cachedLanguageCode)));
  }
  Future <void> changeLanguage(String languageCode)async{
    await LanguageCacheHelper().cacheLanguageCode(languageCode);

    emit(ChangeLocalState(local: Locale(languageCode)));

  }
}
