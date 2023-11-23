import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_ku/data/model/surah_detail_response_model/ayat_surah_detail.dart';

class SurahDetailItem extends StatelessWidget {
  final List<AyatSurahDetail> dataAyat;
  const SurahDetailItem({Key? key, required this.dataAyat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 4,
                        ),
                        // Transform(
                        //   transform: Matrix4.rotationZ(
                        //     math.pi / 4,
                        //   ),
                        //   child: Container(
                        //     width: 24,
                        //     height: 24,
                        //     decoration: BoxDecoration(
                        //       color: Colors.transparent,
                        //       border: Border.all(
                        //         width: 3,
                        //         color: Colors.black,
                        //       ),
                        //     ),
                        //     child: Transform(
                        //       transform: Matrix4.rotationZ(
                        //         -math.pi / 4,
                        //       ),
                        //       child: Text(
                        //         "${dataAyat[index].nomorAyat}",
                        //         style: GoogleFonts.poppins(
                        //             fontSize: 14, fontWeight: FontWeight.w700),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Text(
                          "${dataAyat[index].nomorAyat}",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        Expanded(
                          child: Text(
                            "${dataAyat[index].teksArab}",
                            textAlign: TextAlign.right,
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
                      "${dataAyat[index].teksIndonesia}",
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
        separatorBuilder: ((context, index) => const SizedBox(
              height: 16,
            )),
        itemCount: dataAyat.length);
  }
}
