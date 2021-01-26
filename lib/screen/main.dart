import 'package:flame/util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/screen/main-game.dart';

void main() async {
      Util flameUtil = new Util();
      WidgetsFlutterBinding.ensureInitialized();
      MainGame game = new MainGame();
      runApp(game.widget);

      TapGestureRecognizer tapper = TapGestureRecognizer();
      tapper.onTapDown = game.onTapDown;
      flameUtil.addGestureRecognizer(tapper);
}
