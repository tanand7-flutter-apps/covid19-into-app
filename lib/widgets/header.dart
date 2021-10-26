import 'package:covid_info/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  final String image;
  final String message;
  final VoidCallback onMenuTap;

  const Header({
    Key? key,
    required this.image,
    required this.message,
    required this.onMenuTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurveCreator(),
      child: Container(
        padding: const EdgeInsets.fromLTRB(40, 50, 20, 0),
        height: 350,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: kGradientBackgroundColors,
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/virus.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: onMenuTap,
                icon: SvgPicture.asset('assets/icons/menu.svg'),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SvgPicture.asset(image,
                      width: 230,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter),
                  Positioned(
                    top: 20,
                    left: 150,
                    child: Text(
                      message,
                      style: kHeadingTextStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurveCreator extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
