import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

import '../activity_all_widget_page/widgets/listellipsefive_item_widget.dart';
import 'controller/activity_all_widget_controller.dart';
import 'models/activity_all_widget_model.dart';
import 'models/listellipsefive_item_model.dart';

// ignore_for_file: must_be_immutable
class ActivityAllWidgetPage extends StatelessWidget {
  ActivityAllWidgetController controller =
      Get.put(ActivityAllWidgetController(ActivityAllWidgetModel().obs));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                right: 10,
              ),
              child: Text(
                "lbl_today".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtAvenirNextLTProDemi18.copyWith(),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 16,
              ),
              child: Obx(
                () => ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.activityAllWidgetModelObj.value
                      .listellipsefiveItemList.length,
                  itemBuilder: (context, index) {
                    ListellipsefiveItemModel model = controller
                        .activityAllWidgetModelObj
                        .value
                        .listellipsefiveItemList[index];
                    return ListellipsefiveItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
