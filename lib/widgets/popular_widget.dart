import 'package:flutter/material.dart';
import 'package:pielove/shared/constant.dart';

class PopularWidget extends StatelessWidget {
  final String image;
  final String name;
  final String rating;

  const PopularWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(right: 12),
      width: 150,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/$image'),
          const SizedBox(
            height: 12,
          ),
          Text(
            name,
            maxLines: 1,
            style: medium.copyWith(color: black, fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: orange,
                size: 18,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                rating,
                style: medium.copyWith(
                  color: orange,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
