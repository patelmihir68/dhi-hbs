import 'dart:ui';

import 'package:hbs/data/apiClient/api_client.dart';
import 'package:hbs/data/models/events/get_events_resp.dart';

import '../models/listellipsefive_item_model.dart';
import '/core/app_export.dart';
import 'package:hbs/presentation/activity_all_widget_page/models/activity_all_widget_model.dart';

class ActivityAllWidgetController extends GetxController {
  ActivityAllWidgetController(this.activityAllWidgetModelObj);

  Rx<ActivityAllWidgetModel> activityAllWidgetModelObj;

  GetEventsResp getEventsResp = GetEventsResp();
  @override
  void onReady() {
    super.onReady();
    this.callFetchEvents(
      successCall: _onFetchEventsSuccess,
      errCall: _onFetchEventsError,
    );
  }

  void callFetchEvents(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchEvents(onSuccess: (resp) {
      onFetchEventsSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchEventsError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchEventsSuccess(var response) {
    getEventsResp = GetEventsResp.fromJson(response);
  }

  void onFetchEventsError(var err) {
    /*if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }*/
  }

  void _onFetchEventsSuccess() {
    List<ListellipsefiveItemModel> listellipsefiveItemList = [];

    if (getEventsResp!.events! != null && getEventsResp!.events!.isNotEmpty) {
      for (var element in getEventsResp!.events!) {
        var listellipsefiveItemModel = ListellipsefiveItemModel();
        listellipsefiveItemModel.wassentemailTxt.value = element.recipient!.toString();
        listellipsefiveItemModel.typeTxt.value = element.type!.toString();
        listellipsefiveItemModel.deviceType.value = (element.deviceType != null) ? element.deviceType!.toString() : "";
        listellipsefiveItemModel.timeTxt.value = element.created!.toString();
        listellipsefiveItemList.add(listellipsefiveItemModel);
      }
    }
    activityAllWidgetModelObj.value.listellipsefiveItemList.value = listellipsefiveItemList;
  }

  void _onFetchEventsError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error",
        middleText: "Something Went Wrongeeeee.");
  }

  @override
  void onClose() {
    super.onClose();
  }
}
