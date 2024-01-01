
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

 final Locale localAr = const Locale("ar","EG");
 final Locale localEn = const Locale("en","US");
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: SafeArea(child: InkWell(
        onTap: (){
          context.setLocale(context.locale.languageCode=="en"?localAr:localEn);        },
        child: Text("${"hello".tr()} ${context.locale}"))),);
  }
}
