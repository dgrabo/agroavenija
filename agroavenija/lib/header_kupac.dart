import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// extracto klasu header_kupac da se može koristiti na ostalim screenovima
class header_kupac extends StatelessWidget implements PreferredSizeWidget {
  const header_kupac({
    super.key,
  });

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight); // Standard AppBar height
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: SizedBox(
        child: Image.asset('assets/images/agroavenija-logo.png'),
        height: 80.0,
      ),
      centerTitle: true,
      leading: Container(
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/fi-rs-user.svg'),
            ),
            Text(
              'Ivo Ivić',
              // overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
          ],
        ),
      ),
      leadingWidth: 130,
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/fi-rs-map.svg')),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/fi-rs-settings.svg'),
        ),
      ],
    );
  }
}
