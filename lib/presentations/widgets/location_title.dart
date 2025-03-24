import 'package:delievery_app/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String address;
  final Color iconColor;

  const LocationTile({
    super.key,
    required this.icon,
    required this.title,
    required this.address,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.white,
            child: Icon(icon, color: iconColor),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(address,
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w400)),
            ],
          ),
          const Spacer(),
          Text(
            "View on Map",
            style: GoogleFonts.poppins(
              color: AppColors.secondry,
              fontWeight: FontWeight.w500,
              fontSize: 12,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.secondry,
            ),
          ),
        ],
      ),
    );
  }
}
