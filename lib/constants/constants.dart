// Buttonstyle

import 'package:flutter/material.dart';

ButtonStyle elevatedbuttonstyle = ElevatedButton.styleFrom(
    fixedSize: const Size(300, 50),
    elevation: 0.0,
    backgroundColor: Colors.green[800],
    shadowColor: const Color.fromARGB(255, 117, 199, 134).withOpacity(0.20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)));

// Textstyles

TextStyle textstyle1 =
    const TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color: Colors.white);

TextStyle textstyle2 = const TextStyle(fontSize: 19, fontWeight: FontWeight.bold);

TextStyle textstyle3 =
    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green);
TextStyle textstyle4 = const TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
);
TextStyle textstyle5 = const TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
);
TextStyle textstyle6 =
    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green);

TextStyle textstyle7 = const TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white);
TextStyle textstyle8 = const TextStyle(color: Colors.white);

// Ksizedbox

SizedBox kheight300 = const SizedBox(
  height: 300,
);
SizedBox kheight200 = const SizedBox(
  height: 200,
);

SizedBox kheight20 = const SizedBox(
  height: 20,
);
SizedBox kwidth30 = const SizedBox(
  width: 30,
);
SizedBox kwidth40 = const SizedBox(
  width: 40,
);

SizedBox kwidth120 = const SizedBox(
  width: 120,
);

SizedBox kwidth10 = const SizedBox(
  width: 10,
);
SizedBox kheight60 = const SizedBox(height: 60);
SizedBox kheight5 = const SizedBox(
  height: 5,
);
SizedBox kheight10 = const SizedBox(
  height: 10,
);
SizedBox kheight45 = const SizedBox(height: 45);

// Colors

const kbackgroundColor = Color.fromARGB(255, 247, 255, 237);
