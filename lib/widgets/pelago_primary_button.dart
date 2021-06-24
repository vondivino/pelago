import 'package:flutter/material.dart';
import 'package:pelago/ui/pelago_theme.dart';

PelagoTheme theme = PelagoTheme();

class PelagoPrimaryButton extends StatelessWidget {
  final String text;
  final Function action;
  const PelagoPrimaryButton({
    Key? key,
    required this.text,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => action(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          color: theme.primaryColorDark,
          height: 60.0,
          width: 320.0,
          child: Center(
            child: Text(
              text,
              style: theme
                  .title()
                  .copyWith(fontSize: 24.0, color: theme.whiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
