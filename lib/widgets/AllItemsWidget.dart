import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllItemsWidget extends StatelessWidget {
  const AllItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 5; i++)
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xFF475269).withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5)
                ]),
            child: Column(children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'itemPage',
                      arguments: {'itemNumber': i});
                },
                child: Hero(
                  tag: 'image$i',
                  child: Image.asset(
                    'assets/images/$i.png',
                    height: 130,
                    width: 130,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Nike Shoes',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF475269)),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'New Nike Shoes for men',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xFF475269).withOpacity(0.8),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$50',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color(0xFF475269),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          CupertinoIcons.cart_fill_badge_plus,
                          size: 28,
                          color: Colors.white,
                        ),
                      )
                    ]),
              )
            ]),
          )
      ],
    );
  }
}
