import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app.dart';
import 'package:whatsapp_clone/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();
  runApp(const MyApp());
}
