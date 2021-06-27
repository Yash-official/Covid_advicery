import 'package:flutter/material.dart';

import 'constants.dart';

List<String> advicesHead = [
  'Get Vaccinate',
  'Take Care Of Elderly People',
  'Proper Treatment',
  'Meditation Is The Key',
  'Stay Inside',
  'Consult doctors.',
  'Maintain Social Distance',
  'Eat Healthy Food',
  ' Stay Hydrated',
  'Get Tested',
];
List<String> advices = [
  'Vaccination is an important step to stop the pandemic.',
  'Keeps checking up on elderly people time to time.',
  'Self quarantine yourself if you started showing symptoms of COVID-19.',
  'Helps in calmness and physical relaxation, and enhance overall health.',
  'Without any reason, recommend to don’t go outside.',
  'Doctors advices are always helpful, please consult doctor before using some home remedies of treatment.',
  'Encourage others to maintain social distance.',
  'A high protein and vitamin enriched food has a big roll in maintaining health.',
  'It is necessary to drink minimum 2.7 litres of water everyday, even when you’re not thirsty.',
  'If you have symptoms of Novel Coronavirus, Do a COVID test from your nearest hospital.',
];
List<Widget> pagesList = [
  Container(
    child: Column(
      children: [
        Image(
          image: AssetImage('images/vectors1.png'),
        ),
        Text(
          advicesHead[0],
          style: kadvicetitle,
        ),
        Text(
          advices[0],
          style: kadvice,
        )
      ],
    ),
  ),
  Container(
    child: Column(
      children: [
        Image(
          image: AssetImage('images/vectors2.png'),
        ),
        Text(
          advicesHead[1],
          style: kadvicetitle,
        ),
        Text(
          advices[1],
          style: kadvicetitle,
        )
      ],
    ),
  ),
  Container(
    child: Column(
      children: [
        Image(
          image: AssetImage('images/vectors3.png'),
        ),
        Text(
          advicesHead[2],
          style: kadvicetitle,
        ),
        Text(
          advices[2],
          style: kadvice,
        )
      ],
    ),
  ),
  Container(
    child: Column(
      children: [
        Image(
          image: AssetImage('images/vectors4.png'),
        ),
        Text(
          advicesHead[3],
          style: kadvicetitle,
        ),
        Text(
          advices[3],
          style: kadvice,
        ),
      ],
    ),
  ),
  Container(
    child: Column(
      children: [
        Image(
          image: AssetImage('images/vectors5.png'),
        ),
        Text(
          advicesHead[4],
          style: kadvicetitle,
        ),
        Text(
          advices[4],
          style: kadvice,
        )
      ],
    ),
  ),
  Container(
    child: Column(
      children: [
        Image(
          image: AssetImage('images/vectors6.png'),
        ),
        Text(
          advicesHead[5],
          style: kadvicetitle,
        ),
        Text(
          advices[5],
          style: kadvice,
        ),
      ],
    ),
  ),
  Container(
    child: Column(
      children: [
        Image(
          image: AssetImage('images/vectors7.png'),
        ),
        Text(
          advicesHead[6],
          style: kadvicetitle,
        ),
        Text(
          advices[6],
          style: kadvice,
        )
      ],
    ),
  ),
  Container(
    child: Column(
      children: [
        Image(
          image: AssetImage('images/vectors8.png'),
        ),
        Text(
          advicesHead[7],
          style: kadvicetitle,
        ),
        Text(
          advices[7],
          style: kadvice,
        )
      ],
    ),
  ),
  Container(
    child: Column(
      children: [
        Image(
          image: AssetImage('images/vectors9.png'),
        ),
        Text(
          advicesHead[8],
          style: kadvicetitle,
        ),
        Text(
          advices[8],
          style: kadvice,
        )
      ],
    ),
  ),
  Container(
    child: Column(
      children: [
        Image(
          image: AssetImage('images/vectors10.png'),
        ),
        Text(
          advicesHead[9],
          style: kadvicetitle,
        ),
        Text(
          advices[9],
          style: kadvice,
        )
      ],
    ),
  ),
];
