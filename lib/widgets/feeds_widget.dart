import 'package:flutter/material.dart';
import '/Widgets/appbar_icon.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../screens/product_details_screen.dart';

class FeedsWidget extends StatelessWidget {
  const FeedsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).cardColor,
          child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(ProductDetailsScreen.routeName);
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: size.height * 0.25,
                width: size.width * 0.40,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                              child: RichText(
                            text: const TextSpan(
                                text: '\$',
                                style: TextStyle(color: Colors.blue),
                                children: [
                                  TextSpan(
                                      text: '100',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ))
                                ]),
                          )),
                          AppBarIcons(icon: IconlyBold.heart, function: () {}),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.15,
                      width: double.infinity,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            'https://placeimg.com/640/480/any',
                            fit: BoxFit.cover,
                          )),
                    ),
                   const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('Title',textAlign: TextAlign.start,),
                    ),
                  ],
                ),
              ))),
    );
  }
}
