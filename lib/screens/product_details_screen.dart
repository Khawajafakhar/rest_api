import 'package:card_swiper/card_swiper.dart';

import 'package:flutter/material.dart';
import '../consts/global_colors.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});
  static const routeName = 'prod-details';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 22,
            ),
            const BackButton(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Category',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                    flex: 3,
                    child: Text(
                      'lorem Ipsum',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                Flexible(
                    flex: 1,
                    child: RichText(
                      text: const TextSpan(
                          text: '\$',
                          style: TextStyle(color: Colors.blue, fontSize: 22),
                          children: [
                            TextSpan(
                                text: '100.00',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22))
                          ]),
                    )),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            SizedBox(
              height: size.height * 0.40,
              child: Swiper(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Image.network('https://placeimg.com/640/480/any',fit: BoxFit.cover,);
                },
                pagination: SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                        activeColor: lightIconsColor)),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Description',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
