import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/screen/main-game.dart';

class Fly {

  final MainGame game;
  Rect flyRect;
  Paint flyPaint;
  bool isDead = false;
  bool isOffScreen = false;


  Fly(this.game, double x, double y){
    flyRect = Rect.fromLTWH(x, y, game.tileSize, game.tileSize);
    flyPaint = Paint();
    flyPaint.color = Color(0xff6ab04c);
    flyPaint.isAntiAlias = true;
  }

  void render(Canvas c) {
    c.drawRect(flyRect, flyPaint);
    c.rotate(0.5);
  }

  void update(double t) {
    if (isDead){
      flyRect = flyRect.translate(0, game.tileSize * 10 * t);
      print(game.tileSize * 12 * t);
      if (flyRect.top > game.screenSize.height) {
        isOffScreen = true;
      }
    }
  }

  void onTapDown(){
    isDead = true;
    flyPaint.color = Color(0xffff4757);
    game.spawnFly();
  }
}
