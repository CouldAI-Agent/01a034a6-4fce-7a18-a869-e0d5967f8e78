import 'package:flutter/material.dart';

void main() {
  runApp(const JuiLogoApp());
}

class JuiLogoApp extends StatelessWidget {
  const JuiLogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jamiati Golden Logo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LogoScreen(),
      },
    );
  }
}

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('جمیعتی - گولڈن لوگو', style: TextStyle(fontFamily: 'NotoNastaliqUrdu', fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
        foregroundColor: const Color(0xFFFFD700), // Golden color for app bar text
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 20,
                      spreadRadius: 5,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Stack(
                    children: [
                      // JUI Flag Stripes (Black and White)
                      Column(
                        children: [
                          Expanded(child: Container(color: Colors.black)),
                          Expanded(child: Container(color: Colors.white)),
                          Expanded(child: Container(color: Colors.black)),
                          Expanded(child: Container(color: Colors.white)),
                          Expanded(child: Container(color: Colors.black)),
                          Expanded(child: Container(color: Colors.white)),
                        ],
                      ),
                      // Overlay with Golden Text and Emblem
                      Center(
                        child: Container(
                          padding: const EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.85),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFFFFD700), // Gold
                              width: 6,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFFFFD700).withOpacity(0.4),
                                blurRadius: 15,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'جمیعتی',
                                style: TextStyle(
                                  fontSize: 55,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFD700), // Golden text
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      blurRadius: 4,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'جمعیت علمائے اسلام',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.star, color: Colors.black),
                label: const Text('پروفائل پر لگائیں', style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFD700), // Golden button
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
