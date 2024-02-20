import 'package:flutter/material.dart';
import 'Fragments/HomeFragment.dart';
import 'Fragments/SettingsFragment.dart';
import 'Fragments/SearchFragment.dart';
import 'Fragments/EmailFragment.dart';
import 'Fragments/PhoneFragment.dart';
import 'Fragments/PersonFragment.dart';
import 'Fragments/AlarmFragment.dart';
import 'Fragments/WalletFragment.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    tools: const [
      ...DevicePreview.defaultTools
    ],
  builder: (context) => MyApp()
  )
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
      ),
      home: MyHomePage(),
      color: Colors.deepPurple,
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab Bar'),
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white,
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home',),
                Tab(icon: Icon(Icons.settings), text: 'Settings',),
                Tab(icon: Icon(Icons.search), text: 'Search',),
                Tab(icon: Icon(Icons.email), text: 'Email',),
                Tab(icon: Icon(Icons.phone), text: 'Phone',),
                Tab(icon: Icon(Icons.person), text: 'Person',),
                Tab(icon: Icon(Icons.alarm), text: 'Alarm',),
                Tab(icon: Icon(Icons.wallet), text: 'Wallet',),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeFragment(),
              SettingFragment(),
              SearchFragment(),
              EmailFragment(),
              PhoneFragment(),
              PersonFragment(),
              AlarmFragment(),
              WalletFragment(),
            ],
          ),
        )
      );
  }
}
