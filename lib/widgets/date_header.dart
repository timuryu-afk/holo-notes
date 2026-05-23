import 'package:flutter/material.dart';

class DateHeader extends StatelessWidget {
  final Color accentColor;
  final String dateText;

  final VoidCallback onPrevDay;
  final VoidCallback onNextDay;
  final VoidCallback onOpenPicker;

  const DateHeader({
    super.key,
    required this.accentColor,
    required this.dateText,
    required this.onPrevDay,
    required this.onNextDay,
    required this.onOpenPicker,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          IconButton(
            onPressed: onPrevDay,
            icon: Icon(
              Icons.chevron_left,
              color: accentColor,
              size: 35,
            ),
          ),

          Expanded(
            child: Center(
              child: TextButton(
                onPressed: onOpenPicker,
                child: Text(
                  dateText,
                  style: TextStyle(
                    color: accentColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          IconButton(
            onPressed: onNextDay,
            icon: Icon(
              Icons.chevron_right,
              color: accentColor,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}