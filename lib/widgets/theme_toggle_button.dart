import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class ThemeToggleButton extends StatefulWidget {
  const ThemeToggleButton({super.key});

  @override
  _ThemeToggleButtonState createState() => _ThemeToggleButtonState();
}

class _ThemeToggleButtonState extends State<ThemeToggleButton> {
  Size get s => MediaQuery.of(context).size / 2;
  int isOn = 0;

  @override
  Widget build(BuildContext context) {
    bool darkModeEnabled = Theme.of(context).brightness == Brightness.dark;
    darkModeEnabled ? isOn = 1 : isOn = 0;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 360),
      width: s.width / 2,
      height: s.height / 4,
      color: Colors.transparent,
      child: Center(
        child: GestureDetector(
          onTap: () {
            HapticFeedback.mediumImpact();
            Provider.of<ThemeProvider>(context, listen: false)
                .toggleThemeMode();
            setState(() {
              isOn == 0 ? isOn = 1 : isOn = 0;
            });
          },
          child: Container(
            width: s.width / 4,
            height: s.width * 0.125,
            decoration: BoxDecoration(
              color: const Color(0xff27173A),
              borderRadius: BorderRadius.circular(60),
            ),
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 360),
                  top: 0,
                  left: 0 + (s.width * 0.125) * isOn,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: s.width * 0.125 - 16,
                      height: s.width * 0.125 - 16,
                      decoration: const BoxDecoration(
                        color: Color(0xffFFC209),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 360),
                  top: isOn == 0 ? (s.width * 0.125 - 8) / 2 : 8,
                  left: 0 + (s.width * 0.125 - 8) * isOn,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 360),
                    width: 8 + (s.width * 0.125 - 24) * isOn,
                    height: 8 + (s.width * 0.125 - 24) * isOn,
                    decoration: const BoxDecoration(
                      color: Color(0xff27173A),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
