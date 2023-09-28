import 'package:flutter/material.dart ';
import 'package:marketly_mobile/core/constant.dart';
import 'package:marketly_mobile/core/widgets/app_text_filed.dart';
import 'package:marketly_mobile/core/widgets/product_card.dart';

class SearchScreen extends StatefulWidget {
  static const String screenRoute = '/searchScreen';

  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  late TextEditingController _searchTextEditingController;

  @override
  void initState() {
    super.initState();
    _searchTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _searchTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsetsDirectional.only(top: 10, bottom: 5),
          child: AppTextFiled(
              hint: 'Search Product',
              controller: _searchTextEditingController,
              keyboard: TextInputType.text,
              minLines: null,
              maxLines: null,
              expands: true,
              constraints: 44,
              prefix: const Icon(
                Icons.search_outlined,
                color: Color(0xFFBEC0C7),
              )),
        ),
        leading: Container(
          margin:
              const EdgeInsetsDirectional.only(top: 10, start: 10, bottom: 5),
          width: 20,
          // height: 20,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [kMaincolor1, kMaincolor2]),
              borderRadius: BorderRadiusDirectional.circular(30)),
          child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
              onPressed: () {}),
        ),
        actions: [
          Container(
            margin:
                const EdgeInsetsDirectional.only(top: 10, end: 10, bottom: 5),
            width: 51,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [kMaincolor1, kMaincolor2]),
                borderRadius: BorderRadiusDirectional.circular(30)),
            child: IconButton(
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: GridView.builder(
        itemCount: 6,
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 20),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 168 / 245,
        ),
        itemBuilder: (context, index) {
          return  const ProductCard(
            title: 'Smart Watch Gen I',
            dicCount: 'Disc 80%',
            oldPrice: 200,
            price: 159,
          );
        },
      ),
    );
  }
}
