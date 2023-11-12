import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../app/resources/resources.dart';

final List<Map<String, dynamic>> alternativeLoginButtons = [
  {
    'icon': const Icon(
      Icons.phone,
      color: Colors.black,
    ),
    'onPressed': () {},
  },
  {
    'icon': SvgPicture.asset(Svgs.googleIcon),
    'onPressed': () {},
  },
  {
    'icon': SvgPicture.asset(
      Svgs.facebookIcon,
      height: 35,
    ),
    'onPressed': () {},
  },
];
