import 'package:flutter/material.dart';

import '../service/themes.dart';

void showLongPressOptions(
    BuildContext context,
    VoidCallback onDelete,
    VoidCallback onFavourite,
    VoidCallback onShare,
    String noteTitle,
    bool isFavourited
    ) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: background1Color,

        title: Text(
          'Manage $noteTitle',
          style: TextStyle(color: foregroundColor),
        ),


        actions: <Widget>[

          // CANCEL
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },

            child: Text(
              'Cancel',
              style: TextStyle(
                color: accentColor,
              ),
            ),
          ),

          // DELETE
          TextButton(
            onPressed: () {

              onFavourite();

              Navigator.of(context).pop();
            },

            child: Text(
              isFavourited ? 'Unfavourite' : 'Favourite',
              style: TextStyle(
                color: accentColor,
              ),
            ),
          ),

          TextButton(
            onPressed: () {

              onDelete();

              Navigator.of(context).pop();
            },

            child: Text(
              'Delete',
              style: TextStyle(
                color: accentColor,
              ),
            ),
          ),

          TextButton(
            onPressed: () {

              onShare();

              Navigator.of(context).pop();
            },

            child: Text(
              'Share',
              style: TextStyle(
                color: accentColor,
              ),
            ),
          ),
        ],
      );
    },
  );
}