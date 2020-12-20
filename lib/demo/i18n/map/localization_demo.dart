import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class NinghaoDemoLocalizations {
  final Locale locale;

  NinghaoDemoLocalizations(this.locale);

  static NinghaoDemoLocalizations of(BuildContext context) {
    return Localizations.of<NinghaoDemoLocalizations>(
      context,
      NinghaoDemoLocalizations
    );
  }

  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title': 'hello',
    },
    'zh': {
      'title': '您好',
    }
  };

  String get title {
    return _localized[locale.languageCode]['title'];
  }
}

class NinghaoDemoLocalizationsDelegate
    extends LocalizationsDelegate<NinghaoDemoLocalizations> {
  NinghaoDemoLocalizationsDelegate();

  @override
  Future<NinghaoDemoLocalizations> load(Locale locale) {
    return SynchronousFuture<NinghaoDemoLocalizations>(
        NinghaoDemoLocalizations(locale));
  }

  // 判断是否支持设置的语言
  @override
  bool isSupported(Locale locale) {
    return true;
  }

  // 是否在重新加载的时候重新加载本地化的资源
  @override
  bool shouldReload(LocalizationsDelegate<NinghaoDemoLocalizations> old) {
    return false;
  }
}
