import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 20, right: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 40, color: Colors.black.withAlpha(30)),
          ],
        ),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/search.svg',
                        height: 20,
                        width: 20,
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        width: 10,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/chevron-left.svg',
              height: 20,
              width: 20,
            ),
            onPressed: () {},
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/log-in.svg',
                height: 30,
                width: 30,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
