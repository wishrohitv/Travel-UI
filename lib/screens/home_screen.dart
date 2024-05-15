import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/widgets/destination_corousel.dart';
import 'package:travel_ui/widgets/hotel_corousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  List<IconData> _icon = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.hotel,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          print(_selectedIndex);
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).colorScheme.primary
                : Color(0xFFD5E6F1),
            borderRadius: BorderRadius.circular(30.0)),
        child: Icon(_icon[index],
            size: 25.0,
            color: _selectedIndex == index
                ? Theme.of(context).primaryColor
                : Color(0xFF84C1C4)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 60.0),
              child: Text(
                "What would you like to find? ",
                style: const TextStyle(
                    fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icon
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
              // children: [
              //   _buildIcon(0),
              //   _buildIcon(1),
              //   _buildIcon(2),
              //   _buildIcon(3),
              // ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const DestinationCorousel(),
            const SizedBox(
              height: 20.0,
            ),
            const HotelCorousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTab,
          onTap: (value) {
            setState(() {
              _currentTab = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                // color: Theme.of(context).primaryColor,
                size: 30.0,
              ),
              label: "",
              // backgroundColor: Theme.of(context).colorScheme.secondary
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_pizza,
                // color: Theme.of(context).primaryColor,
                size: 30.0,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 15.0,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1712847333437-f9386beb83e4?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                ),
                label: ""),
          ]),
    );
  }
}
