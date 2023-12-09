import 'package:flutter/material.dart';

import '../../core/my_app.dart';

class AppInitialization {

  ///Initial Setup That needs to Done to Run the App
  ///It contains all the initial code like, run App, WidgetBinding, etc
  static setup() {
     WidgetsFlutterBinding.ensureInitialized();
    runApp(const MyApp());
  }
}
