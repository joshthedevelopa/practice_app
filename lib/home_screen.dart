import 'package:flutter/material.dart';
import 'package:giftme/gift_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> giftOptionCard(GiftOption giftOption) {
    List<Widget> widgets = [];

    if (giftOption.options.isNotEmpty) {
      widgets.add(Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 2,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < giftOption.options.length; i++)
              Material(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(6.0),
                color: giftOption.selectedOption == i
                    ? Colors.blueGrey.withOpacity(0.25)
                    : Colors.transparent,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      giftOption.selectedOption = i;
                    });
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(giftOption.options[i].name),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ));

      for (int i = 0; i < giftOption.options.length; i++) {
        if (giftOption.selectedOption == i) {
          widgets.addAll(
            giftOptionCard(
              giftOption.options[giftOption.selectedOption!],
            ),
          );
        } else {
          giftOption.options[i].selectedOption = null;
        }
      }
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GIFT SHOP",
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0).copyWith(top: 6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ).copyWith(bottom: 16.0),
              child: const Text(
                "Select your favorite option?",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 24.0,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: giftOptionCard(gift),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
