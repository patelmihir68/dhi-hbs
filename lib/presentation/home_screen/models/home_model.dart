import 'package:get/get.dart';
import 'listcheckmark_item_model.dart';
import 'listtime_four_item_model.dart';

class HomeModel {
  Rx<String> durationTxt = Rx('Lorem ipsum dolor sit amet');
  Rx<String> k8MeetingsScheTxt = Rx('Lorem ipsum dolor sit amet');
  RxList<ListcheckmarkItemModel> listcheckmarkItemList =
      RxList.filled(0, ListcheckmarkItemModel());

  RxList<ListtimeFourItemModel> listtimeFourItemList =
      RxList.filled(0, ListtimeFourItemModel());
}
