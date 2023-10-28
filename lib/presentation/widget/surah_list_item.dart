import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_ku/core/routes.dart';
import 'package:quran_ku/data/model/surah_list/data_surah_list_model.dart';
import 'package:quran_ku/presentation/page/surah_detail_page.dart';

class SurahListItem extends StatelessWidget {
  final List<DataSurahListModel> data;
  const SurahListItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          children: List.generate(data.length, (index) {
            return InkWell(
              onHover: (val) {},
              onTap: () {
                Navigator.pushNamed(context, Routes.detailSurah, arguments: {
                  'args': SurahDetailPageArgs(
                    name: data[index].namaLatin ?? "",
                    id: data[index].nomor ?? 0,
                  )
                });
              },
              hoverColor: Colors.green,
              child: Card(
                elevation: 2.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "${data[index].nomor}",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "${data[index].namaLatin}",
                          style: GoogleFonts.poppins(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "${data[index].arti}",
                          style: GoogleFonts.poppins(fontSize: 11),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "${data[index].jumlahAyat}",
                            style: GoogleFonts.poppins(fontSize: 11),
                          ),
                          const Spacer(),
                          Text(
                            "${data[index].nama}",
                            style: GoogleFonts.poppins(fontSize: 11),
                          ),
                        ],
                      )
                    ],
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
