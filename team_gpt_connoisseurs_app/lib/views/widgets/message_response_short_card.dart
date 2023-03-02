import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_gpt_connoisseurs_app/constants/asset_image.dart';
import 'package:team_gpt_connoisseurs_app/model/message.dart';

class MessageResponseShortCard extends StatelessWidget {
  final Message message;
  final Color? cardColor;
  const MessageResponseShortCard({
    super.key,
    this.cardColor, required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: cardColor ?? const Color(0xff393939),
      ),
      width: 306.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 49.18,
            height: 49.18,
            child: Image.asset(
              KAssetImage.sampleChat1,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   message.senderName?? "Ope",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      height: 1.0,
                    ),
                  ),
                  Text(
                   message.message?? "Gee, its been good news all day. i met someone special today. she's really pretty.",
                    style: GoogleFonts.inter(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          // Column(
          //   children: const [
          //     Text(
          //       "Ope",
          //       style: TextStyle(color: Colors.white),
          //     ),
          //     Text(
          //       "Gee, its been good news all day. i met someone special today. she's really pretty.",
          //       style: TextStyle(color: Colors.white),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
