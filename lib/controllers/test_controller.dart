import 'package:get/get.dart';
import 'package:eu_soccer/constants/api_urls.dart';
import 'package:eu_soccer/controllers/base_controller.dart';
import 'package:eu_soccer/models/clubs_model.dart';
import 'package:eu_soccer/services/base_client.dart';

class TestController extends GetxController with BaseController {
  Rx<ClubsModel?>? demoData = ClubsModel().obs;
  Rx<bool> hasData = false.obs;
  Rx<bool> sortByName = false.obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    await Future.delayed(const Duration(milliseconds: 100));
    showLoading('Fetching data');
    var response =
        await BaseClient().get(ApiUrls.clubsApi).catchError(handleError);
    if (response != null) {
      demoData?.value = ClubsModel.fromJson(response);
      hasData.value = true;
    }
    hideLoading();
    //default sort by name
    demoData?.value?.clubs?.sort((b, a) => b.name!.compareTo("${a.name}"));
    // if (kDebugMode) {
    //   print(response);
    // }
  }


  void sortData()  {
    //changing the sort type, here default is sort by name true
    sortByName.toggle();
    //based on sorby value it will sort the list
    if(sortByName.value){
      demoData?.value?.clubs?.sort((a, b) => b.value!.compareTo(num.parse("${a.value}")));
    }else{
      demoData?.value?.clubs?.sort((b, a) => b.name!.compareTo("${a.name}"));
    }
    demoData?.refresh();
  }
}
