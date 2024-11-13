import 'package:aadbez/presentation/home/part.dart';
import 'package:aadbez/presentation/home/servicesection.dart';
import 'package:aadbez/presentation/home/helpdesk.dart';
import 'package:aadbez/presentation/home/testmonotiles.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'bannersectiom.dart';
import 'footer.dart';
import 'header.dart';
import 'hearfrom.dart';
import 'onbording.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
    child: Column(
    children: [
      CustomHeader(),
    BannerSection(),
      ServicesSection(),
      StrategicMarketingWidget(),
      StrategicMarketingWidget2(), StrategicMarketingWidget(),
      StrategicMarketingWidget2(), StrategicMarketingWidget(),
      StrategicMarketingWidget2(),
      OnboardingWidget(),

    Testimonials(),
      HelpSection(),
    Footer(),
    ],
    ),
    ),
    );
  }
}
