import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rms/controller/screens/details/category_details_controller.dart';
import 'package:rms/core/constant/app_assets.dart';
import 'package:rms/core/constant/app_colors.dart';
import 'package:rms/core/constant/app_enums.dart';
import 'package:rms/core/constant/app_pages_routes.dart';
import 'package:rms/core/constant/app_shared_keys.dart';
import 'package:rms/core/helper/logic_functions.dart';
import 'package:rms/view/widget/shared/nested_scroll_view_page.dart';
import 'package:rms/view/widget/shared/text_icon.dart';

class CategoryDetailsScreen extends GetView<CategoryDetailsController> {
  const CategoryDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryDetailsController>(
      builder: (controller) => NestedScrollViewPage(
        title:
            "${HelperLogicFunctions.upperFirstChar(controller.category.name)} Category",
        statusView: controller.statusView,
        imageUrl: controller.category.photo,
        tabBar: TabBar(
          controller: controller.tabController,
          tabs: [
            Tab(
                child: Text(
              "Product",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: AppColors.primary70),
            )),
            Tab(
                child: Text(
              "Purchases",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: AppColors.primary70),
            )),
            Tab(
                child: Text(
              "Sales",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: AppColors.primary70),
            )),
          ],
        ),
        tabBarView: TabBarView(
          controller: controller.tabController,
          children: [
            controller.category.details.products.isNotEmpty
                ? ListView.builder(
                    itemCount: controller.category.details.products.length,
                    itemBuilder: (context, index) => Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () {
                          Get.toNamed(AppPagesRoutes.productDetailsScreen,
                              arguments: {
                                AppSharedKeys.passId: controller
                                    .category.details.products[index].id
                              });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    controller
                                        .category.details.products[index].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            fontSize: 22, letterSpacing: 1),
                                  ),
                                  TextIcon(
                                    text:
                                        " ${controller.category.details.products[index].amount}",
                                    icon: Icons.trending_down,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextIcon(
                                    text:
                                        " ${controller.category.details.products[index].salePrice} \$",
                                    icon: Icons.upload,
                                  ),
                                  TextIcon(
                                    text:
                                        " ${controller.category.details.products[index].purchasePrice} \$",
                                    icon: Icons.download,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        alignment: Alignment.center,
                        child: Image.asset(
                          AppAssets.noOrder,
                          width: 0.6 * Get.width,
                        ),
                      ),
                      Text(
                        "No any Product",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColors.primary70, fontSize: 24),
                      )
                    ],
                  ),
            controller.category.details.purchases.isNotEmpty
                ? ListView.builder(
                    itemCount: controller.category.details.purchases.length,
                    itemBuilder: (context, index) => Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () {
                          Get.toNamed(AppPagesRoutes.productDetailsScreen,
                              arguments: {
                                AppSharedKeys.passId: controller
                                    .category.details.purchases[index].productId
                              });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    controller.category.details.purchases[index]
                                        .productName,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            fontSize: 22, letterSpacing: 1),
                                  ),
                                  TextIcon(
                                    text:
                                        " ${controller.category.details.purchases[index].amount}",
                                    icon: Icons.trending_down,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextIcon(
                                    text:
                                        "${controller.category.details.purchases[index].totalPurchasePrice / controller.category.details.purchases[index].amount} \$",
                                    icon: Icons.upload,
                                  ),
                                  TextIcon(
                                    text:
                                        " ${controller.category.details.purchases[index].totalPurchasePrice} \$",
                                    icon: Icons.download,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        alignment: Alignment.center,
                        child: Image.asset(
                          AppAssets.noOrder,
                          width: 0.6 * Get.width,
                        ),
                      ),
                      Text(
                        "No any Purchase",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColors.primary70, fontSize: 24),
                      )
                    ],
                  ),
            controller.category.details.sales.isNotEmpty
                ? ListView.builder(
                    itemCount: controller.category.details.sales.length,
                    itemBuilder: (context, index) => Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () {
                          Get.toNamed(AppPagesRoutes.productDetailsScreen,
                              arguments: {
                                AppSharedKeys.passId: controller
                                    .category.details.sales[index].productId
                              });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    controller.category.details.sales[index]
                                        .productName,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            fontSize: 22, letterSpacing: 1),
                                  ),
                                  TextIcon(
                                    text:
                                        " ${controller.category.details.sales[index].amount}",
                                    icon: Icons.trending_down,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextIcon(
                                    text:
                                        "${controller.category.details.sales[index].totalSalePrice / controller.category.details.sales[index].amount} \$",
                                    icon: Icons.upload,
                                  ),
                                  TextIcon(
                                    text:
                                        " ${controller.category.details.sales[index].totalSalePrice} \$",
                                    icon: Icons.download,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        alignment: Alignment.center,
                        child: Image.asset(
                          AppAssets.noOrder,
                          width: 0.6 * Get.width,
                        ),
                      ),
                      Text(
                        "No any Sale",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColors.primary70, fontSize: 24),
                      )
                    ],
                  ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              controller.categoriesController.mainController
                  .individualStocktaking(context,
                      stocktakingType: StocktakingType.category,
                      enabledSelect: false,
                      item: controller.category);
            },
            icon: const Icon(
              Icons.featured_play_list_outlined,
            ),
          ),
          PopupMenuButton<OperationType>(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            tooltip: "Operation",
            onSelected: (value) async {
              switch (value) {
                case OperationType.update:
                  {
                    controller.categoriesController.showDialogUpdateCategory(
                      context,
                      category: controller.category,
                      onSuccess: () async {
                        await controller.getCategory();
                      },
                    );
                    break;
                  }
                case OperationType.delete:
                  {
                    controller.categoriesController.showDialogDeleteCategory(
                      context,
                      category: controller.category,
                      onSuccess: () async {
                        Get.back();
                      },
                    );
                    break;
                  }
                case OperationType.registers:
                  {
                    controller.getCategoryRegisters(context: context);
                    break;
                  }
                default:
                  break;
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem<OperationType>(
                value: OperationType.update,
                child: Row(
                  children: [
                    Icon(
                      Icons.edit_outlined,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Edit'),
                  ],
                ),
              ),
              const PopupMenuItem<OperationType>(
                  value: OperationType.delete,
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete_outlined,
                        color: AppColors.danger50,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Delete'),
                    ],
                  )),
              const PopupMenuItem<OperationType>(
                  value: OperationType.registers,
                  child: Row(
                    children: [
                      Icon(
                        Icons.receipt_long_outlined,
                        color: AppColors.gray,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Registers'),
                    ],
                  )),
            ],
          )
        ],
        childrenBottomAppbar: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Products amount: ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.primary40),
                ),
                Text(
                  "${controller.category.productsAmount}",
                  style: const TextStyle(
                      fontSize: 17,
                      color: AppColors.primary0,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sales amount: ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.primary40),
                ),
                Text(
                  "${controller.category.salesAmount}",
                  style: const TextStyle(
                      fontSize: 17,
                      color: AppColors.primary0,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Purchases amount: ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.primary40),
                ),
                Text(
                  "${controller.category.purchasesAmount}",
                  style: const TextStyle(
                      fontSize: 17,
                      color: AppColors.primary0,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
        isShowDetails: controller.isShowDetails,
        onTapImage: () {
          controller.isShowDetails=!controller.isShowDetails;
          controller.update();
        },
      ),
    );
  }
}
