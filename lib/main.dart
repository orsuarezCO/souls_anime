// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';
import 'package:souls_anime/domain/controller/login_controller.dart';
import 'package:souls_anime/ui/pages/register_screen.dart';
import 'package:souls_anime/ui/my_app.dart';

import 'domain/controller/location.dart';
import 'domain/controller/permissions.dart';
import 'domain/use_case/permission_management.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  Get.put(LoginController());
  PermissionsController permissionsController =
          Get.put(PermissionsController());
      permissionsController.permissionManager = PermissionManager();
      Get.lazyPut(() => LocationController());
  runApp(MyApp());
}
//void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
