import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:rest_api/models/product_model.dart';
import 'package:rest_api/services/api_handler.dart';
import '../consts/global_colors.dart';
import '../Widgets/appbar_icon.dart';
import '../Widgets/banner_cruser.dart';
import '../screens/all_products.dart';
import '../widgets/feeds_widget.dart';
import '../screens/category_screen.dart';
import '../screens/users_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _searchController;
   List<ProductsModel> prodList=[];

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    getProductsList();
    print('prodList $prodList');
    super.didChangeDependencies();
  }
  Future<void> getProductsList()async{
    prodList=await APIHandler.getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Home'),
          leading: AppBarIcons(
            function: () {
              Navigator.of(context).pushNamed(CategoryScreen.routeName);
            },
            icon: IconlyBold.category,
          ),
          actions: [AppBarIcons(icon: IconlyBold.user3, function: () {
            Navigator.of(context).pushNamed(UsersScreen.routeName);
          })],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                    hintText: 'Search',
                    filled: true,
                    fillColor: Theme.of(context).cardColor,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).cardColor,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                    suffixIcon: Icon(
                      IconlyLight.search,
                      color: lightIconsColor,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: size.height * 0.25,
                child: Swiper(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const BannerCruser();
                  },
                  pagination: SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                          activeColor: lightIconsColor)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                        child: Text(
                      'New Products',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                    Material(
                      color: Theme.of(context).cardColor,
                      child: InkWell(
                        onTap: null,
                        child: AppBarIcons(
                            icon: IconlyBold.arrowRight,
                            function: () {
                              Navigator.of(context)
                                  .pushNamed(AllProducts.routeName);
                            }),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.85,
                        crossAxisSpacing: 0.0,
                        mainAxisSpacing: 0.0),
                itemBuilder: (context, index) => const FeedsWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
