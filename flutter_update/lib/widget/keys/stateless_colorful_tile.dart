import 'package:flutter/material.dart';
import 'package:flutter_update/widget/util/UniqueColorGenerator.dart';

class StatelessColorfulTile extends StatelessWidget {
  /// 颜色是在构造Widget的时候就决定了
  final Color defautlColor = UniqueColorGenerator().getColor();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Container(
        color: defautlColor,
      ),
    );
  }

  StatelessColorfulTile({Key key}) : super(key: key);
}
