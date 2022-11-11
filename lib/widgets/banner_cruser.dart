import 'package:flutter/cupertino.dart';
import '../consts/global_colors.dart';

class BannerCruser extends StatelessWidget {
  const BannerCruser({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: size.height * 0.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            gradient: const LinearGradient(
              colors: [
                Color(0xFF7A60A5),
                Color(0xFF82C3DF),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            )),
        child: Row(
          children: [
            Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xFF9689CE)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Get the special discount',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: lightCardColor),
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Flexible(
                            child: SizedBox(
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Text(
                                  '50% OFF',
                                  style: TextStyle(
                                    color: lightCardColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
            Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.network("https://i.ibb.co/vwB46Yq/shoes.png"),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
