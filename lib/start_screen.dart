import 'package:game_space/developer_screen.dart';
import 'package:game_space/snakegamefield.dart';
import 'package:game_space/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: deviceHeight,
              width: deviceWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                    'assets/images/start_wallpaper.jpg',
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 25,
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Image.asset(
                      'assets/images/bird.png',
                      width: deviceWidth / 4,
                    ),
                    Text(
                      'Flying Bird',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Spacer(),
                    MenuButton(
                      width: deviceWidth,
                      color: Colors.blue,
                      textColor: Colors.white,
                      text: 'Start Game',
                      onPress: () {
                        Navigator.of(context).pushNamed(HomePage.ROUTE_NAME);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: deviceHeight,
              width: deviceWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/snakeback.png',
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 25,
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Image.asset(
                      'assets/images/snake.png',
                      width: deviceWidth / 4,
                    ),
                    Text(
                      'Snake',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Spacer(),
                    MenuButton(
                      width: deviceWidth,
                      color: Colors.blue,
                      textColor: Colors.white,
                      text: 'Start Game',
                      onPress: () {
                        Navigator.of(context).pushNamed(GameField.ROUTE_NAME);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: deviceHeight,
              width: deviceWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/start_wallpaper.jpg',
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 25,
                ),
                child: Column(
                  children: [
                    MenuButton(
                      width: deviceWidth,
                      color: Colors.blue,
                      textColor: Colors.white,
                      text: 'Developer',
                      onPress: () {
                        Navigator.of(context)
                            .pushNamed(DeveloperScreen.ROUTE_NAME);
                      },
                    ),
                    Spacer(),
                    MenuButton(
                      width: deviceWidth,
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      text: 'Quit',
                      onPress: () {
                        SystemNavigator.pop();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final double? width;
  final String? text;
  final Color? textColor;
  final Color? color;

  final VoidCallback? onPress;

  const MenuButton({
    this.width,
    this.text,
    this.textColor,
    this.color,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 55,
      child: ElevatedButton(
        child: Text(
          text!,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: onPress,
      ),
    );
  }
}
