import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            forceElevated: true,
            pinned: true,
            expandedHeight: 100,
            leading: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
                iconSize: 30,
              )
            ],
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Simple Budget"),
            ),
            centerTitle: true,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              height: 100,
              margin: const EdgeInsets.all(10),
              color: Colors.red,
            );
          }, childCount: 10))
        ],
      ),
    );
  }
}
