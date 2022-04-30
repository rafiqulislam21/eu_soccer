import 'package:eu_soccer/constants/app_sizes.dart';
import 'package:eu_soccer/models/clubs_model.dart';
import 'package:eu_soccer/services/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:eu_soccer/views/widgets/widgets.dart';
import 'package:get/get.dart';

class ClubDetails extends StatelessWidget {
  final Club? club;

  const ClubDetails({Key? key, required this.club}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_rounded, color: Colors.white,)),
          title: Text(
            club?.name??"-",
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Themes.primarySwatchLight,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: AppSizes.height / 3,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: CustomCachedNetworkImage(
                    url: club?.image,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSizes.padding),
              child: Text(
                club?.country ?? "-",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSizes.padding),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Der Club '),
                    TextSpan(
                      text: club?.name ?? "-",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' aus Spanien hat einen Wert von '),
                    TextSpan(text: ' ${club?.value ?? "-"} Millionen Euro '),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
