import 'package:flutter/material.dart';
import '/constants/asset_image.dart';

class AppSideBar extends StatelessWidget {
  final int selectedItemIndex;
  final void Function(String)? onTapItem;
  const AppSideBar({
    super.key,
    this.selectedItemIndex = 0,
    this.onTapItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          KAssetImage.sidebarImages.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: InkWell(
              onTap: () {
                if (onTapItem != null) {
                  onTapItem!(KAssetImage.sidebarImages[index]);
                } else {
               //   throw Exception();
                }
              },
              child: Container(
                padding: const EdgeInsets.all(1.5),
                decoration: BoxDecoration(
                  color:    const Color(0xff262626),
                  gradient: setContainerGradient(index == selectedItemIndex),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: SizedBox(
                    width: 25,
                    height: 25,
                    child: Image.asset(
                      KAssetImage.sidebarImages[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  LinearGradient? setContainerGradient(bool isSelected) {
    if (!isSelected) {
      return null;
    }
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.yellow,
        Colors.yellow,
        Colors.red.shade500,
      ],
    );
  }
}
