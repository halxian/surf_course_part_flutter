import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Image.asset('assets/img/imgCat.jpeg'),
              ),
              const SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 6),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 15, 175, 255),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'О себе',
                        style: GoogleFonts.oswald(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Flutter developrt',
                        style: GoogleFonts.oswald(color: Colors.red),
                      ),
                      Text(
                        'Человек',
                        style: GoogleFonts.oswald(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 6),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 15, 175, 255),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Увлечения',
                        style: GoogleFonts.lobster(
                          color: Colors.yellow,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Мемы',
                        style: GoogleFonts.lobster(color: Colors.yellow),
                      ),
                      Text(
                        'Спорт',
                        style: GoogleFonts.lobster(color: Colors.yellow),
                      ),
                      Text(
                        'Машины',
                        style: GoogleFonts.lobster(color: Colors.yellow),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 6),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 15, 175, 255),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Опыт в разработке',
                        style: GoogleFonts.pressStart2p(
                          color: Colors.green,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'нету(',
                        style: GoogleFonts.pressStart2p(
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        'чуть чуть знаю java, puthon, c++,',
                        style: GoogleFonts.pressStart2p(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 83,
                    child: Column(
                      children: [
                        const Text('by'),
                        Image.asset(
                          'assets/img/imgSurf.jpg',
                          scale: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
