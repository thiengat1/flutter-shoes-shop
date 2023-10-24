import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_shop_shoes/widgets/AllItemsWidget.dart';
import 'package:flutter_shop_shoes/widgets/HomeBottomNavBar.dart';
import 'package:flutter_shop_shoes/widgets/RowItemsWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 5,
                                color: const Color(0xFF475269).withOpacity(0.3))
                          ]),
                      child: const Icon(
                        Icons.sort,
                        color: Color(0xFF475269),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF5F9FD),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  color:
                                      const Color(0xFF475269).withOpacity(0.3))
                            ]),
                        child: const badges.Badge(
                          badgeContent: Text('3'),
                          child: Icon(Icons.notifications),
                        )),
                  ]),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 55,
              decoration: BoxDecoration(
                  color: const Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFF475269),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]),
              child: Row(children: [
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: 'Search'),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.search,
                  size: 27,
                  color: Color(0xFF475269),
                )
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            const RowItemsWidget(),
            const SizedBox(
              height: 20,
            ),
            const AllItemsWidget(),
          ],
        ),
      )),
      bottomNavigationBar: const HomeBottomNavBar(),
    );
  }
}
