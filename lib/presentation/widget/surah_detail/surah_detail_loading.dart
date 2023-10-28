import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';
import 'package:quran_ku/presentation/widget/base_shimmer.dart';

class SurahDetailLoading extends StatelessWidget {
  const SurahDetailLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BaseShimmer(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Transform(
                              transform: Matrix4.rotationZ(
                                math.pi / 4,
                              ),
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    width: 3,
                                    color: Colors.black,
                                  ),
                                ),
                                child: Transform(
                                  transform: Matrix4.rotationZ(
                                    -math.pi / 4,
                                  ),
                                  child: Text(
                                    "1",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              )),
                          Expanded(
                            child: Text(
                              "وَرَاَيْتَ النَّاسَ يَدْخُلُوْنَ فِيْ دِيْنِ اللّٰهِ اَفْوَاجًاۙ",
                              style: GoogleFonts.poppins(
                                  fontSize: 24, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "wa ra'aitan-nāsa yadkhulūna fī dīnillāhi afwājā(n).",
                        style: GoogleFonts.poppins(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
        separatorBuilder: ((context, index) => const SizedBox(
              height: 16,
            )),
        itemCount: 4);
  }
}
