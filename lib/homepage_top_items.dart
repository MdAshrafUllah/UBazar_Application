import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageTopItems extends StatefulWidget {
  const HomePageTopItems({super.key});

  @override
  State<HomePageTopItems> createState() => _HomePageTopItemsState();
}

class CardItem {
  final String urlImage;
  final String title;

  const CardItem({
    required this.urlImage,
    required this.title,
  });
}

class _HomePageTopItemsState extends State<HomePageTopItems> {
  List<CardItem> items = [
    CardItem(
      urlImage: 'assets/Images/market.svg',
      title: "All",
    ),
    CardItem(
      urlImage: 'assets/Images/Fruits.svg',
      title: "Fruits",
    ),
    CardItem(
      urlImage: 'assets/Images/vegetables.svg',
      title: "Vegetables",
    ),
    CardItem(
      urlImage: 'assets/Images/fish.svg',
      title: "Fish",
    ),
    CardItem(
      urlImage: 'assets/Images/Fruits.svg',
      title: "Fruits",
    ),
    CardItem(
      urlImage: 'assets/Images/vegetables.svg',
      title: "Vegetables",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => SizedBox(
          width: 7,
        ),
        itemBuilder: (context, index) => buildCard(item: items[index]),
      ),
    );
  }

  buildCard({required CardItem item}) => Column(
        children: [
          Container(
            height: 80,
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
            child: SvgPicture.asset(
              item.urlImage,
              fit: BoxFit.contain,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(112, 112, 112, 0.4),
                  blurRadius: 5,
                  offset: Offset(0, 0), // Shadow position
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Text(
            item.title,
            style: TextStyle(
              color: Color.fromRGBO(112, 112, 112, 25),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      );
}
