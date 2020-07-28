import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:domainchecker/src/bloc_delegate/simple_bloc_delegate.dart';
import 'package:domainchecker/src/di/app_config.dart';
import 'package:domainchecker/src/my_app.dart';
import 'package:flutter/cupertino.dart';

Future<void> main() async {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  setupAppConfig();
  runApp(MyApp());
}
