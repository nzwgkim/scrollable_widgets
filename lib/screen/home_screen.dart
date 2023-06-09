import 'package:flutter/material.dart';
import 'package:scrollable_widgets/layout/main_layout.dart';
import 'package:scrollable_widgets/screen/custome_scroll_view_sliverlist_screen.dart';
import 'package:scrollable_widgets/screen/future_builder_screen.dart';
import 'package:scrollable_widgets/screen/grid_view_screen.dart';
import 'package:scrollable_widgets/screen/listview_screen.dart';
import 'package:scrollable_widgets/screen/refresh_indicator_screen.dart';
import 'package:scrollable_widgets/screen/reoderable_listview.dart';
import 'package:scrollable_widgets/screen/scrollbar_screen.dart';
import 'package:scrollable_widgets/screen/single_child_scroll_view_screen.dart';

import 'custome_scroll_view_slivergrid_screen.dart';
import 'tab_bar_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: 'Scrollable Widgets',
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              SingleChildScrollViewScreen(),
                        ),
                      ),
                  child: const Text(
                    'SingleChildScrollView',
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const ListViewScreen(),
                        ),
                      ),
                  child: const Text(
                    'ListViewScreen',
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const GridViewScreen(),
                        ),
                      ),
                  child: const Text(
                    'GridViewScreen',
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const ReorderableListViewScreen(),
                        ),
                      ),
                  child: const Text(
                    'ReorderableListViewScreen',
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              CustomerScrollViewSliverListScreen(),
                        ),
                      ),
                  child: const Text(
                    'CustomerScrollViewScreen-SliverList',
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              CustomerScrollViewSliverGridScreen(),
                        ),
                      ),
                  child: const Text(
                    'CustomerScrollViewScreen-SliverGrid',
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => ScrollBarScreen(),
                        ),
                      ),
                  child: const Text(
                    'ScrollBarScreen',
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              RefreshIndicatorScreen(),
                        ),
                      ),
                  child: const Text(
                    'RefreshIndicatorScreen',
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const TabBarHome(),
                        ),
                      ),
                  child: const Text(
                    'TabBarHome',
                    style: TextStyle(fontSize: 20),
                  )),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const FutureBuilderScreen(),
                        ),
                      ),
                  child: Text(
                    'StreamBuilder & FutureBuilder',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber[300],
                        fontWeight: FontWeight.w700),
                  )),
            ],
          ),
        ));
  }
}
