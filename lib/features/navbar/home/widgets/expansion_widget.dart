import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';

class ExpansionDetailWidget extends StatefulWidget {
  const ExpansionDetailWidget({
    super.key,
    required this.title,
    required this.info,
    required this.imgPath,
  });
  final String imgPath, title, info;

  @override
  State<ExpansionDetailWidget> createState() => _ExpansionDetailWidgetState();
}

class _ExpansionDetailWidgetState extends State<ExpansionDetailWidget> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      shadowColor: AppColors.neutralColor,
      key: cardA,
      leading: CircleAvatar(
        backgroundImage: AssetImage(widget.imgPath),
        radius: 25,
      ),
      title: Text(
        widget.title,
        style: ApptextStyles.kHeaderStyle.copyWith(fontSize: 20),
      ),
      subtitle: Text(
        widget.info,
        overflow: TextOverflow.ellipsis,
        style: ApptextStyles.kPrimaryStyle,
      ),
      children: [
        const Divider(
          thickness: 1.0,
          height: 1.0,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Text(
              widget.info,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
