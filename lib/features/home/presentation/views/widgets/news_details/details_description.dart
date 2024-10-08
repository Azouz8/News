import 'package:flutter/material.dart';
import 'package:news/core/functions/url_launcher.dart';

class DetailsDescription extends StatelessWidget {
  const DetailsDescription({
    super.key,
    required this.description,
    required this.link,
  });

  final String description, link;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(right: 16, left: 16, bottom: 16, top: 70),
          decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            color:Theme.of(context).scaffoldBackgroundColor
              ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 18,
                  fontFamily: "NunitoMed",
                  height: 1.5,
                  wordSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 8,),
              GestureDetector(
                onTap: () async{
                  launchURL(context, link);
                },
                child: Text(
                  "Tab to see more...",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    color: Colors.blue,
                    fontFamily: "NunitoMed",
                    height: 1.5,
                    wordSpacing: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
