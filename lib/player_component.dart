import 'dart:async';

import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:flame/sprite.dart';

class PlayerComponent extends Component {
  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    final imagesLoader = Images();
    final playerImg = SpriteSheet(image: await imagesLoader.load('player.png'), srcSize: Vector2(48, 48));


    final animation  = playerImg.createAnimation(row: 3, stepTime: 0.2, to: 9 ); 
    // SpriteAnimationData spriteDate =
    //     SpriteAnimationData.sequenced(amount: 3, stepTime: 0.1, textureSize: Vector2(48, 48));

    // final playerAnimation = SpriteAnimationComponent.fromFrameData(animation, spriteDate)..size = Vector2(250, 250);
    // SpriteComponent playerSprite = SpriteComponent.fromImage(playerImg, srcSize: Vector2(48,48));
    // SpriteBatch spriteBatch = SpriteBatch(playerImg);
    // SpriteBatchComponent platerSpriteBatch = SpriteBatchComponent(spriteBatch: spriteBatch);

    final componentAnimated = SpriteAnimationComponent(animation: animation)..size = Vector2(250, 250); 
    add(componentAnimated);
  }
}
