import 'package:flutter/material.dart';
import 'package:unitconverter/Const/colors.dart';
import 'package:unitconverter/Widgets/frontCard.dart';

class homePage extends StatefulWidget {
  homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

double calculateAspectRatio(int index) {
  // Replace this with actual content or data retrieval logic
  String textContent = "Lorem ipsum dolor sit amet...";

  // Calculate the aspect ratio based on the height-to-width ratio of the text content
  final textPainter = TextPainter(
    text: TextSpan(text: textContent, style: TextStyle(fontSize: 16)),
    maxLines: 2, // Adjust as needed
    textDirection: TextDirection.ltr,
  )..layout(maxWidth: double.infinity);

  double aspectRatio = textPainter.height / textPainter.width;

  return aspectRatio;
}

class _homePageState extends State<homePage> {
  late double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Row(children: [
          Container(
              color: unitColor,
              child: const Text(
                'Unit',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              )),
          const Text(" Converter",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900))
        ]),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 0),
          itemCount: 12,
          itemBuilder: (ctx, i) {
            // Calculate the desired aspect ratio based on content or other factors
             aspectRatio = calculateAspectRatio(i);
            return frontCard(ctx, i, aspectRatio);
          },
          gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 0,
            childAspectRatio:3/4,
          ),
        ),
      ),
    );
  }
}
