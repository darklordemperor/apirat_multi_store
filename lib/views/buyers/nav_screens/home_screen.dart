import 'package:apirat_multi_store/views/buyers/nav_screens/widgets/banner_widget.dart';
import 'package:apirat_multi_store/views/buyers/nav_screens/widgets/category_text.dart';
import 'package:apirat_multi_store/views/buyers/nav_screens/widgets/search_input_widget.dart';
import 'package:apirat_multi_store/views/buyers/nav_screens/widgets/welcome_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SizedBox(
              height: 14,
            ),
            SearchInputWidget(),
            BannerWidget(),
            CategoryText(),
          ],
        ),
      ),
    );
  }
}
