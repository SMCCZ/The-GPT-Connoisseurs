import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:team_gpt_connoisseurs_app/model/message.dart';

class MessageController extends GetxController {
  final messages = <Message>[].obs;
  final messageEditingController = TextEditingController();
}
