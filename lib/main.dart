import 'package:flutter/material.dart';
import 'package:habitpay/profile_page.dart';
import 'package:habitpay/wallet_page.dart';
import 'home_page.dart';

void main() {
  runApp( HabitPay() );
}

class HabitPay extends StatelessWidget {
  const HabitPay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true, 
        fontFamily: 'Urbanist',
        primarySwatch: Colors.lightBlue,
      ), 
      home: const App(),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.settings),
              style: IconButton.styleFrom(
                foregroundColor: Colors.white,
              ),
            )
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: <Color>[
                  Color.fromARGB(255, 71, 168, 248), 
                  Color.fromARGB(255, 125, 220, 255)
                ]
              )
            ),
          ),
        ),

      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          child: Icon(Icons.camera_alt),
      ),

      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },

        selectedIndex: currentPageIndex,

        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home), 
            label: 'Home'
          ),
          NavigationDestination(
            icon: Icon(Icons.wallet), 
            label: 'Wallet'
          ),
          NavigationDestination(
            icon: Icon(Icons.portrait), 
            label: 'Profile'
          ),
        ],
      ),

      body: <Widget>[
        // Home page
        const Padding(
          padding: EdgeInsets.all(0.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                BalanceCard(balance: 0),
                ServicesCard(),
                StatusCard(),
              ],
            ),
          )
        ),
        
        // Wallet page
        const Padding(
          padding: EdgeInsets.all(0.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                BasicBalanceCard(balance: 0),
                TransferTopupCard(),
              ],
            ),
          )
        ),
        
        // Profile page
        const ProfilePage(),
      ][currentPageIndex],
    );
  }
}