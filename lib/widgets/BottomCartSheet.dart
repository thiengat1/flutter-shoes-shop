import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomCartSheet extends StatelessWidget {
  const BottomCartSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: const EdgeInsets.only(top: 20),
      color: const Color(0xFFCEDDEE),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          height: 500,
          child: SingleChildScrollView(
              child: Column(
            children: [
              for (int i = 1; i < 5; i++)
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 140,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF5F9FD),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 1,
                            color: const Color(0xFF475269).withOpacity(0.3))
                      ]),
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10, right: 60),
                            height: 90,
                            width: 100,
                            decoration: BoxDecoration(
                                color: const Color(0xFF475269),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Image.asset(
                            'assets/images/$i.png',
                            height: 130,
                            width: 130,
                            fit: BoxFit.contain,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Nike Shoe',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF475269),
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xFFF5F9Fd),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 5,
                                              spreadRadius: 1,
                                              color: const Color(0xFF475269)
                                                  .withOpacity(0.3))
                                        ]),
                                    child: const Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: const Text(
                                      '02',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF475269)),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xFFF5F9Fd),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 5,
                                              spreadRadius: 1,
                                              color: const Color(0xFF475269)
                                                  .withOpacity(0.3))
                                        ]),
                                    child: const Icon(CupertinoIcons.plus,
                                        size: 18, color: Color(0xFF475269)),
                                  ),
                                ],
                              )
                            ]),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF5F9Fd),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        color: const Color(0xFF475269)
                                            .withOpacity(0.3))
                                  ]),
                              child: const Icon(
                                Icons.delete,
                                size: 18,
                                color: Colors.red,
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              '\$50',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF475269),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                    color: const Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 1,
                          color: const Color(0xFF475269).withOpacity(0.3))
                    ]),
                child: const Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Fee:',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF475269)),
                      ),
                      Text(
                        '\$20',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF475269)),
                      ),
                    ],
                  ),
                  Divider(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub-Total:',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF475269)),
                      ),
                      Text(
                        '\$100',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF475269)),
                      ),
                    ],
                  ),
                  Divider(
                    height: 20,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount :',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF475269)),
                      ),
                      Text(
                        '-\$10',
                        style: TextStyle(fontSize: 14, color: Colors.red),
                      ),
                    ],
                  ),
                ]),
              )
            ],
          )),
        ),
        Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
              color: const Color(0xFFF5F9FD),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 1,
                    color: const Color(0xFF475269).withOpacity(0.3))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(fontSize: 18, color: Color(0xFF475269)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$120',
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: const Color(0xFF475269),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Checkout',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
