import 'package:flutter/material.dart';
import 'package:news/core/styles.dart';

class DetailsDescription extends StatelessWidget {
  const DetailsDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(right: 16, left: 16, bottom: 16, top: 70),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.white),
          child: Text(
            text,
            style: Styles.textStyle14Regular.copyWith(
              fontSize: 18,
              fontFamily: "NunitoMed",
              height: 1.5,
              wordSpacing: 1.5,
            ),
            // maxLines: 15,
          ),
        ),
      ),
    );
  }
}

String text =
    "LONDON — Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said. Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward \$20,000, only to sink as low as \$3,122 a year later. Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.” “I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.” Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority. “Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January. “If consumers invest in these types of product, they should be prepared to lose all their money.” Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.”";
