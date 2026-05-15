import 'package:apirat_multi_store/vendor/views/screens/edit_products_tabs/published_tab.dart';
import 'package:apirat_multi_store/vendor/views/screens/edit_products_tabs/unpublished_tab.dart';
import 'package:flutter/material.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.green.shade400,
          title: Text(
            'Manage Products',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          bottom: TabBar(tabs: [
            Tab(
              child: Text('Published'),
            ),
            Tab(
              child: Text('Unpublished'),
            ),
          ]),
        ),
        body: TabBarView(children: [
          PublishedTab(),
          UnpublishedTab(),
        ]),
      ),
    );
  }
}
