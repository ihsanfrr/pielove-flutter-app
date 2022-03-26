import 'package:flutter/material.dart';
import 'package:pielove/shared/constant.dart';
import 'package:pielove/widgets/menu_item.dart';
import 'package:pielove/widgets/popular_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  final List<String> menu = [
    'salty-pie.png',
    'sweet-pie.png',
    'fruit-pie.png',
    'drinks.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/profile.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Ihsan',
                          style: medium.copyWith(
                            color: white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'What pie you want to try today?',
                          style: regular.copyWith(
                            color: const Color(0xFF9B8FFF),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF4A3EAE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    style: const TextStyle(
                      color: white,
                    ),
                    cursorColor: const Color(0xFF9B8FFF),
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Color(0xFF9B8FFF),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 0,
                      ),
                      hintText: 'Find your favorite Pie',
                      hintStyle: const TextStyle(
                        color: Color(0xFF9B8FFF),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xFF4A3EAE),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xFF4A3EAE),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xFF4A3EAE),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: primaryOpacity,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Category',
                      style: semiBold.copyWith(
                        color: black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        menu.length,
                        (i) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: i != 1 ? white : orange,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Image.asset('assets/images/${menu[i]}'),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                menu[i]
                                    .replaceAll('-', '')
                                    .replaceAll('.png', ''),
                                style: TextStyle(
                                  color: i != 1 ? grey : black,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Popular Sweet Pie',
                      style: semiBold.copyWith(
                        color: black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          PopularWidget(
                            image: 'cream-sweet-pie.png',
                            name: 'Cream Sweet Pie',
                            rating: '4.5',
                          ),
                          PopularWidget(
                            image: 'double-jumbo-pie.png',
                            name: 'Double Jumbo Pie',
                            rating: '4.5',
                          ),
                          PopularWidget(
                            image: 'fruit-small-pie.png',
                            name: 'Fruit Small Pie',
                            rating: '4.5',
                          ),
                          PopularWidget(
                            image: 'cream-sweet-pie.png',
                            name: 'Cream Sweet Pie',
                            rating: '4.5',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: const [
            MenuItem(
              icon: 'home.png',
              name: 'Home',
              isActive: true,
            ),
            MenuItem(
              icon: 'cart.png',
              name: 'Cart',
            ),
            MenuItem(
              icon: 'love.png',
              name: 'Love',
            ),
            MenuItem(
              icon: 'profile.png',
              name: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
