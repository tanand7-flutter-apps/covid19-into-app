import 'package:covid_info/utilities/constants.dart';
import 'package:covid_info/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
              image: 'assets/icons/coronadr.svg',
              message: 'Get to know\nAbout Covid-19.',
              onMenuTap: () {
                Navigator.of(context).pop();
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Symptoms',
                    style: kTitleTextstyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Expanded(
                        child: SymptomCard(
                          image: 'assets/images/headache.png',
                          title: 'Headache',
                        ),
                      ),
                      // SizedBox(width: 2),
                      Expanded(
                        child: SymptomCard(
                          image: 'assets/images/caugh.png',
                          title: 'Cough',
                        ),
                      ),
                      // SizedBox(width: 2),
                      Expanded(
                        child: SymptomCard(
                          image: 'assets/images/fever.png',
                          title: 'Fever',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Prevention', style: kTitleTextstyle),
                  const SizedBox(height: 20),
                  const PreventCard(
                    image: 'assets/images/wear_mask.png',
                    title: 'Wear face mask',
                    message:
                        'Since the start of the coronavirus outbrerak some places have fully embraced wearing face masks, and anyone caught without one risks becoming a social pariah.',
                  ),
                  const PreventCard(
                    image: 'assets/images/wash_hands.png',
                    title: 'Wash your hands',
                    message:
                        'These diseases include gastrointestinal infections, such as Salmonella, and respiratory infections such as influenza.',
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
