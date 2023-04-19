import 'package:flutter/material.dart';

class HomePageSelectdItems extends StatefulWidget {
  const HomePageSelectdItems({super.key});

  @override
  State<HomePageSelectdItems> createState() => _HomePageSelectdItemsState();
}

class Card {
  final String urlImage;
  final String title;
  final String subtitle;

  const Card({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

class _HomePageSelectdItemsState extends State<HomePageSelectdItems> {
  List<Card> items = [
    Card(
      urlImage: 'assets/Images/Fruits_and_Vegetables.png',
      title: "Fruits and Vegetables",
      subtitle:
          'Lorem ipsum diord sit amit sjjrk aosjet constectia adiposimg sot',
    ),
    Card(
      urlImage: 'assets/Images/Grocery and Staples.png',
      title: "Grocery and Staples",
      subtitle:
          'Lorem ipsum diord sit amit sjjrk aosjet constectia adiposimg sot',
    ),
    Card(
      urlImage: 'assets/Images/Household Needs.png',
      title: "Household Needs",
      subtitle:
          'Lorem ipsum diord sit amit sjjrk aosjet constectia adiposimg sot',
    ),
    Card(
      // urlImage: 'assets/Images/Household Needs.svg',
      urlImage: 'assets/Images/Mans and Womens Wear.png',
      title: "Mans and Womens Wear",
      subtitle:
          'Lorem ipsum diord sit amit sjjrk aosjet constectia adiposimg sot',
    ),
    Card(
      urlImage: 'assets/Images/Foot ware.png',
      // urlImage: 'assets/Images/Foot ware.svg',
      title: "Foot ware",
      subtitle:
          'Lorem ipsum diord sit amit sjjrk aosjet constectia adiposimg sot',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            height: 5,
          ),
          itemCount: items.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Divider(thickness: 0.1);
            } else {
              return buildCard(item: items[index - 1]);
            }
          },
        ),
      ),
    );
  }

  buildCard({required Card item}) => Container(
        height: 80,
        padding: EdgeInsets.only(
          top: 10,
        ),
        child: ListTile(
          leading: Image(
            image: AssetImage(item.urlImage),
            width: 80,
          ),
          title: Text('${item.title}'),
          subtitle: Text('${item.subtitle}'),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Color.fromRGBO(1, 145, 2, 1),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(112, 112, 112, 0.5),
              spreadRadius: 1,
              blurRadius: 5,
              // Shadow position
            ),
          ],
        ),
      );
}
