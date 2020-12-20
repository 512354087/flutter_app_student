
import 'package:flutter/material.dart';
import 'package:flutter_app_student/demo/i18n/intl/intl_demo_localizations.dart';
import './map/localization_demo.dart';


class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text(locale.toString()),
          Text(
              // Localizations.of(context, NinghaoDemoLocalizations).title,
              NinghaoDemoLocalizations.of(context).title,
              style: Theme.of(context).textTheme.title,
           ),
           Text(
              // Localizations.of(context, NinghaoDemoLocalizations).title,
              // NinghaoDemoLocalizations.of(context).title,
              IntlDemoLocalzations.of(context).greet('ninghao'),
              style: Theme.of(context).textTheme.title,
            )
        ],)
      ),
    );
  }
}