import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../const/size.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: height(context, 5),
        width: width(context, 2.3),
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      scale: 1,
                      image: AssetImage(
                        'assets/user1.png',
                      ))),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: MaterialButton(
                onPressed: () {},
                height: 20,
                child: const Icon(
                  Icons.add,
                  size: 25,
                ),
                color: white2,
                shape: const CircleBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
