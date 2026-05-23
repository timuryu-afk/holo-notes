
import 'package:flutter/material.dart';

import '../service/backup_service.dart';
import '../service/restorebackup_service.dart';
import '../service/theme_prefs.dart';
import '../service/themes.dart';
import '../widgets/theme_option_tile.dart';

void showSettingsDialog(BuildContext context) {


  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ValueListenableBuilder<int>(
        valueListenable: curThemeID,
        builder: (context, value, _) {
          final theme = themesList[value];

          return AlertDialog(
            backgroundColor: theme.background1Color,

            title: Text(
              'Settings',
              style: TextStyle(color: theme.foregroundColor),
            ),

            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Themes', style: TextStyle(color: theme.foregroundColor)),
                const SizedBox(height: 12),

                SizedBox(
                  width: double.maxFinite,
                  height: 300,
                  child: ListView.builder(
                    itemCount: themesList.length,
                    itemBuilder: (context, index) {
                      final itemTheme = themesList[index];

                      return ThemeOptionTile(
                        id: itemTheme.id,
                        title: itemTheme.themeName,
                        accentColor: itemTheme.accentColor,
                        foregroundColor: theme.isDark ? Colors.white : Colors.black,
                        backgroundColor: itemTheme.background1Color,
                        onPressed: () {
                          curThemeID.value = itemTheme.id;
                          ThemePrefs.saveThemeId(curThemeID.value);
                        },
                      );
                    },
                  ),
                ),

                const SizedBox(height: 12),

                Text('Backup', style: TextStyle(color: theme.foregroundColor)),

                SizedBox(
                  width: double.maxFinite,
                  child: TextButton(
                    onPressed: () async {
                      try {
                        await exportBackup();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Backup exported")),
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Backup failed: $e")),
                        );
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(theme.background1Color),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.0),
                          side: BorderSide(
                            color: theme.accentColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      "Backup Data",
                      style: TextStyle(
                        color: theme.accentColor,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: double.maxFinite,
                  child: TextButton(
                    onPressed: () async {
                      try {
                        await importBackup();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Restore successful")),
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Restore failed: $e")),
                        );
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(theme.background1Color),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.0),
                          side: BorderSide(
                            color: theme.accentColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      "Restore from Backup",
                      style: TextStyle(
                        color: theme.accentColor,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'Close',
                  style: TextStyle(color: theme.accentColor),
                ),
              ),
            ],
          );
        },
      );
    },
  );
}