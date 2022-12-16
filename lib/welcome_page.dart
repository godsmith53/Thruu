import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:thruu/screens/home.dart';
import 'package:thruu/screens/profile.dart';
import 'package:thruu/screens/rewards.dart';
import 'package:thruu/screens/subscription.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SubscriptionPage(),
    RewardsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
          child: GNav(
              //rippleColor: Color.fromARGB(255, 255, 83, 83),
              gap: 8,
              backgroundColor: Colors.black,
              color: Color.fromARGB(255, 228, 99, 99),
              activeColor: Colors.white,
              padding: EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Subscription',
                ),
                GButton(
                  icon: Icons.bolt,
                  text: 'Rewards',
                ),
                GButton(
                  icon: Icons.manage_accounts,
                  text: 'Settings',
                ),
              ],
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              }),
        ),
      ),
    );
  }
}
