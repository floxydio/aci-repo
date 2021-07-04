import 'package:flutter/material.dart'; // <--- Berfungsi untuk mengimport Widget dari Flutter

import 'screens/Login.dart'; // <-- Abis deklarasiin di home, terus panggil di import

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          Login(), // <-- Buat Class Baru yg bernama MyScreen di dalam lib bikin folder baru screens isinya MyScreen.dart
    ));
