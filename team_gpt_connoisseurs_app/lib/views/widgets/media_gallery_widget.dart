import 'package:flutter/material.dart';
import 'package:team_gpt_connoisseurs_app/constants/asset_image.dart';

class MediaGalleryWidget extends StatelessWidget {
  const MediaGalleryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ...List.generate(
          10,
          (index) => Container(
            margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
            ),
            width: 63,
            height: 63,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                KAssetImage.sampleChat2,
                fit: BoxFit.cover,
                width: 63,
                height: 63,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
