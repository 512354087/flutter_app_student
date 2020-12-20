import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import './intl_demo_messages_all.dart';  // 导入生成的文件
class IntlDemoLocalzations{
  static IntlDemoLocalzations of(BuildContext context) {
    return Localizations.of<IntlDemoLocalzations>(
      context,
      IntlDemoLocalzations
    );
  }

  static Future<IntlDemoLocalzations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return IntlDemoLocalzations();
    });
  }
  String get title => Intl.message(
    'hello',
    name: 'title',
    desc: 'demo localizations.',
  );

  String greet(String name) => Intl.message(
    'hello $name',
    name: 'greet',
    desc: 'greet someone.',
    args: [name],
  );
}

class IntlDemoLocalzationsDelegate
    extends LocalizationsDelegate<IntlDemoLocalzations> {
  IntlDemoLocalzationsDelegate();

  @override
  Future<IntlDemoLocalzations> load(Locale locale) {
    return IntlDemoLocalzations.load(locale);
  }

  // 判断是否支持设置的语言
  @override
  bool isSupported(Locale locale) {
    return true;
  }

  // 是否在重新加载的时候重新加载本地化的资源
  @override
  bool shouldReload(LocalizationsDelegate<IntlDemoLocalzations> old) {
    return false;
  }
}