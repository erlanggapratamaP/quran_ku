import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_ku/presentation/widget/base_shimmer.dart';

class SurahListLoadingWidget extends StatelessWidget {
  const SurahListLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          children: List.generate(15, (index) {
            return InkWell(
              hoverColor: Colors.green,
              child: BaseShimmer(
                child: Card(
                  elevation: 2.0,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BaseShimmer(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "1",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        BaseShimmer(
                          child: Text(
                            "Al-Fatihah",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w700),
                          ),
                        ),
                        BaseShimmer(
                          child: Text(
                            "Pembukaan",
                            style: GoogleFonts.poppins(fontSize: 11),
                          ),
                        ),
                        Row(
                          children: [
                            BaseShimmer(
                              child: Text(
                                "7",
                                style: GoogleFonts.poppins(fontSize: 11),
                              ),
                            ),
                            const Spacer(),
                            BaseShimmer(
                              child: Text(
                                "  ",
                                style: GoogleFonts.poppins(fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
