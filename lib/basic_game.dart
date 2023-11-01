import 'dart:async';

import 'package:basic_game/player_component.dart';
import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';

class BasicGame extends FlameGame {
  @override
  FutureOr<void> onLoad() async {
    super.onLoad();

    PlayerComponent playerComponent = PlayerComponent();

    world.add(playerComponent);

    camera = CameraComponent(
      viewfinder: Viewfinder()..anchor = Anchor.center,
      world: world,
    );

    await add(camera); 
  }
}
