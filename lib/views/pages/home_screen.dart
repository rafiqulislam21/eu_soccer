import 'package:eu_soccer/controllers/test_controller.dart';
import 'package:eu_soccer/services/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eu_soccer/services/language/language_services.dart';
import 'package:eu_soccer/services/theme/theme_services.dart';

import 'club_details.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(TestController());
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: Container(),
        titleSpacing: 0.0,
        automaticallyImplyLeading: false,
        leadingWidth: 20,
        centerTitle: false,
        title: Text(
          'title'.tr,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Themes.primarySwatchLight,
        actions: [
          IconButton(
              onPressed: () => _key.currentState!.openDrawer(),
              icon: const Icon(Icons.settings, color: Colors.white,)
          ),
          IconButton(
            onPressed: () {
              controller.sortData();
            },
            icon: const Icon(Icons.filter_list, color: Colors.white,)
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ListTile(
                leading: Icon(ThemeService().loadThemeFromBox()
                    ? Icons.wb_twighlight
                    : Icons.wb_sunny_sharp),
                title: Text('change_theme'.tr),
                subtitle: Text(
                    ThemeService().loadThemeFromBox() ? 'dark'.tr : 'light'.tr),
                trailing: Switch(
                  value: ThemeService().loadThemeFromBox(),
                  onChanged: (val) {
                    ThemeService().switchTheme();
                  },
                  activeColor: Theme.of(context).colorScheme.secondary,
                )),
            ListTile(
                leading: const Icon(Icons.translate),
                title: Text('change_language'.tr),
                subtitle: Text(LanguageService().locale.languageCode == 'de'
                    ? 'german'.tr
                    : 'english'.tr),
                trailing: Switch(
                  value: LanguageService().locale.languageCode == 'de'
                      ? true
                      : false,
                  onChanged: (val) {
                    if (val) {
                      LanguageService()
                          .switchLanguage(changeLocale: Locale('de', 'DE'));
                    } else {
                      LanguageService()
                          .switchLanguage(changeLocale: Locale('en', 'US'));
                    }
                  },
                  activeColor: Theme.of(context).colorScheme.secondary,
                )),
          ],
        ),
      ),
      body: SafeArea(
          child: Obx(() => AnimatedCrossFade(
                duration: const Duration(milliseconds: 500),
                crossFadeState: !controller.hasData.value
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstChild: const EmptyWidget(),
                secondChild: ListView.separated(
                    itemCount: controller.demoData?.value?.clubs?.length ?? 0,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 1,
                      );
                    },
                    itemBuilder: (context, index) {
                      // dynamic club = controller.demoData?.value?.clubs![index];
                      return ListTile(
                        leading: CustomCachedNetworkImage(
                          url:
                              controller.demoData?.value?.clubs![index].image ??
                                  "",
                        ),
                        title: Text(
                            controller.demoData?.value?.clubs![index].name ??
                                ""),
                        subtitle: Text(
                            controller.demoData?.value?.clubs![index].country ??
                                ""),
                        trailing: Text(
                            "${controller.demoData?.value?.clubs![index].value} "+"million".tr),
                        onTap: () {
                          Get.to(
                            ClubDetails(
                                club:
                                    controller.demoData?.value?.clubs![index]),
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInQuad,
                            transition: Transition.fadeIn,
                          );
                        },
                      );
                    }),
              ))),
    );
  }
}
