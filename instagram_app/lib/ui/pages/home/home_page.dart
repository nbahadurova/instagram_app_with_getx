import 'package:flutter/material.dart';
import 'package:instagram_app/ui/pages/home/widgets/stories_list.dart';
import 'package:instagram_app/ui/pages/home/widgets/app_bar_widget.dart';
import 'package:instagram_app/ui/pages/home/widgets/bottom_nav_bar_widget.dart';
import 'package:instagram_app/ui/pages/home/widgets/post_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: AppBarWidget()),
      body: SafeArea(
        child: Column(
          children: [
            StoriesList(),
            PostListViewBuilder(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
