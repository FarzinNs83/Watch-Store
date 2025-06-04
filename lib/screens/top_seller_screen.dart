import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/resources/sized_box_ext.dart';
import 'package:watch_store/widgets/main_app_bar.dart';
import 'package:watch_store/widgets/products_grid_view.dart';

class TopSellerScreen extends StatelessWidget {
  const TopSellerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MainAppBar(title: 'پرفروش ترین ها', image: Assets.svg.sort),
        body: Column(
          children: [
            12.height,
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 80,
                      padding: EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: Color(0xFF0075FB),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Center(
                        child: Text(
                          "نیوفورس",
                          style: TextStyle(
                            fontFamily: FontFamily.dana,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            24.height,
            Expanded(
              child: GridView.builder(
                itemCount: 8,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return ProductsGridView(
                    imagePath: Assets.png.unnamed.path,
                    title: 'ساعت مردانه اسکمی',
                    price: 65000,
                    discountedPrice: 122000,
                    discount: 20,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
