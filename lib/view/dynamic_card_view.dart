import 'package:flutter/material.dart';

import 'package:project_flutter/common/mysnackbar.dart';
import 'package:project_flutter/view/card_view.dart';

class DynamicCardView extends StatelessWidget {
  const DynamicCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Card"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 1; i < 21; i++) ...{
              GestureDetector(
                onTap: () {
                  showMySnackBar(
                    context,
                    'Hi',
                  );
                },
                child: MyCard(text: 'Card $i Clicked'),
              )
            }
          ],
        ),
      )),
    );
  }
}
