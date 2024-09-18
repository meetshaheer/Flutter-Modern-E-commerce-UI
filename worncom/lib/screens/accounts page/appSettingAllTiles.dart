
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worncome/screens/accounts%20page/customAccountSettingTile.dart';

class appSettingAllTiles extends StatelessWidget {
  const appSettingAllTiles({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        accountSectionTile(
          dark: dark,
          tileicon: Iconsax.document_upload,
          title: "Load Data",
          subtitle: "Upload data to your cloud storage",
        ),
        accountSectionTile(
          dark: dark,
          tileicon: Iconsax.location,
          title: "Geolocation",
          subtitle: "Get location permissions to App",
        ),
        accountSectionTile(
          dark: dark,
          tileicon: Iconsax.security_user,
          title: "Safe Mode",
          subtitle: "Search results is safe for all ages",
        ),
      ],
    );
  }
}
