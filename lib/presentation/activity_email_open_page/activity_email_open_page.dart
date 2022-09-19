import '../activity_email_open_page/widgets/listellipsefive1_item_widget.dart';
import 'controller/activity_email_open_controller.dart';
import 'models/activity_email_open_model.dart';
import 'models/listellipsefive1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ActivityEmailOpenPage extends StatelessWidget {
  ActivityEmailOpenController controller =
      Get.put(ActivityEmailOpenController(ActivityEmailOpenModel().obs));

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
                  itemCount: controller.activityEmailOpenModelObj.value
                      .listellipsefive1ItemList.length,
                  itemBuilder: (context, index) {
                    Listellipsefive1ItemModel model = controller
                        .activityEmailOpenModelObj
                        .value
                        .listellipsefive1ItemList[index];
                    return Listellipsefive1ItemWidget(
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
