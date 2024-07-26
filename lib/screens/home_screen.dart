import 'package:flutter/material.dart';
import 'package:flutter_application_starbhak/widgets/home_bottom_bar.dart';
import 'package:flutter_application_starbhak/widgets/items_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "It's a Great Day for Food",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 50, 54, 56),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Find your food",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => _onButtonPressed(0),
                      style: ElevatedButton.styleFrom(
                        primary: _selectedIndex == 0
                            ? Color(0xFFE57734)
                            : Colors.grey,
                      ),
                      child: Text("All"),
                    ),
                    ElevatedButton(
                      onPressed: () => _onButtonPressed(1),
                      style: ElevatedButton.styleFrom(
                        primary: _selectedIndex == 1
                            ? Color(0xFFE57734)
                            : Colors.grey,
                      ),
                      child: Text("Food"),
                    ),
                    ElevatedButton(
                      onPressed: () => _onButtonPressed(2),
                      style: ElevatedButton.styleFrom(
                        primary: _selectedIndex == 2
                            ? Color(0xFFE57734)
                            : Colors.grey,
                      ),
                      child: Text("Drink"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: [
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                ][_selectedIndex],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
