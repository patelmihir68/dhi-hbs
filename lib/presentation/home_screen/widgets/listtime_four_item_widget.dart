import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

import '../controller/home_controller.dart';
import '../models/listtime_four_item_model.dart';

// ignore: must_be_immutable
class ListtimeFourItemWidget extends StatelessWidget {
  ListtimeFourItemWidget(this.listtimeFourItemModelObj);

  ListtimeFourItemModel listtimeFourItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray30012,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 16,
              top: 12,
              bottom: 16,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: getMargin(
                    top: 5,
                    bottom: 6,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          listtimeFourItemModelObj.meetStartTime.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAvenirNextLTProBold12.copyWith(),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 6,
                          right: 5,
                        ),
                        child: Obx(
                          () => Text(
                            listtimeFourItemModelObj.meetEndTime.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtAvenirNextLTProRegular12.copyWith(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 230,
                  margin: getMargin(
                    left: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          right: 10,
                        ),
                        child: Obx(
                          () => Text(
                            listtimeFourItemModelObj.meetTitle.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAvenirNextLTProDemi18Bluegray700
                                .copyWith(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 5,
                        ),
                        child: Obx(
                          () => Text( "With " +
                            listtimeFourItemModelObj.meetContacts.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtAvenirNextLTProRegular14Bluegray702
                                .copyWith(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: getMargin(
                left: 16,
              ),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        //left: 100,
                        top: 27,
                        right: 16,
                        bottom: 31,
                      ),
                      child: Obx(
                        () => Text(
                          listtimeFourItemModelObj.meetTime.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAvenirNextLTProRegular12Bluegray702
                              .copyWith(),
                        ),
                      ),
                    ),
                  ]))
        ],
      ),
    );
  }
}