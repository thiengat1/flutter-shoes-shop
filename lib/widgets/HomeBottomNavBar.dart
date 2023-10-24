import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_shoes/widgets/BottomCartSheet.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          color: Color(0xFF475269),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Icon(
          Icons.category_outlined,
          color: Colors.white,
          size: 32,
        ),
        InkWell(
          onTap: () {
            showSlidingBottomSheet(context, builder: (context) {
              return SlidingSheetDialog(
                  elevation: 8,
                  cornerRadius: 16,
                  builder: (context, state) {
                    return const BottomCartSheet();
                  });
            });
          },
          child: const Icon(
            CupertinoIcons.cart_fill,
            color: Colors.white,
            size: 32,
          ),
        ),
        const Icon(
          Icons.favorite_border,
          color: Colors.white,
          size: 32,
        ),
        const Icon(
          Icons.person,
          color: Colors.white,
          size: 32,
        ),
      ]),
    );
  }
}
