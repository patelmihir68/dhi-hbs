import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

import '../controller/activity_email_open_controller.dart';
import '../models/listellipsefive1_item_model.dart';

// ignore: must_be_immutable
class Listellipsefive1ItemWidget extends StatelessWidget {
  Listellipsefive1ItemWidget(this.listellipsefive1ItemModelObj);

  Listellipsefive1ItemModel listellipsefive1ItemModelObj;

  var controller = Get.find<ActivityEmailOpenController>();

  SelectionPopupModel? selectedDropDownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 8.0,
        bottom: 8.0,
      ),
      decoration: AppDecoration.outlineGray70011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /* Padding(
            padding: getPadding(
              left: 16,
              top: 16,
              right: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      20.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgEllipse5,
                    height: getSize(
                      40.00,
                    ),
                    width: getSize(
                      40.00,
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 16,
                    top: 3,
                    bottom: 3,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_brian_halligan".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAvenirNextLTProDemi18.copyWith(),
                      ),
                      Padding(
                        padding: getPadding(
                          right: 9,
                        ),
                        child: Text(
                          "msg_ceo_at_bluemoon".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtAvenirNextLTProRegular10.copyWith(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),*/
          Padding(
            padding: getPadding(
              left: 16,
              top: 12,
              right: 16,
            ),
            child: Obx(
              () => Text(
                "${listellipsefive1ItemModelObj.typeTxt.value} email: ${listellipsefive1ItemModelObj.wassentemailTxt.value}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtAvenirNextLTProRegular16.copyWith(),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 14,
              top: 9,
              right: 14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 1,
                  ),
                  child: Obx(
                    () => Text(
                      listellipsefive1ItemModelObj.timeTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAvenirNextLTProRegular12.copyWith(),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 9,
                    top: 1,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgComputer11X12,
                    height: getVerticalSize(
                      11.00,
                    ),
                    width: getHorizontalSize(
                      12.00,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 14,
                top: 14,
                right: 14,
                bottom: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  /*  CustomDropDown(
                    width: 60,
                    focusNode: FocusNode(),
                    icon: Container(
                      margin: getMargin(
                        left: 8,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgArrowdown,
                      ),
                    ),
                    hintText: "lbl_1_sent".tr,
                    margin: getMargin(
                      top: 3,
                      bottom: 7,
                    ),
                    fontStyle:
                        DropDownFontStyle.AvenirNextLTProRegular14Cyan801,
                    items: listellipsefive1ItemModelObj.dropdownItemList,
                    onChanged: (value) {
                      selectedDropDownValue = value;
                    },
                  ),*/
                  Container(
                    padding: getPadding(
                      left: 4,
                      top: 3,
                      right: 4,
                      bottom: 7,
                    ),
                    decoration: AppDecoration.txtOutlineBluegray100.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                    ),
                    child: Obx(
                      () => Text(
                        listellipsefive1ItemModelObj.typeTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAvenirNextLTProDemi14.copyWith(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
