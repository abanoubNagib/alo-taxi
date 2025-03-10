import 'package:flutter/material.dart';

import '../theme/light_colors.dart';
import '../theme/styles.dart';

class CustomMaterialButton extends StatelessWidget {
  final Color buttonColor;
  final Color? textColor;
  final Color borderColor;
  final bool withBorderColor;
  final double fontSize;
  final double elevation;
  final double? borderRadius;
  final double width;
  final double height;
  final String? text;
  final TextStyle? textStyle;
  final Widget? widget;
  final bool isLoading;
  final void Function()? onTap;
  final bool isDisable;
  final bool isBoldText;
  final MaterialTapTargetSize materialTapTargetSize;

  const CustomMaterialButton({
    super.key,
    this.buttonColor = LightColorsManager.primary,
    this.textColor = LightColorsManager.white,
    this.borderColor = LightColorsManager.primary,
    this.withBorderColor = false,
    this.fontSize = 13,
    this.elevation = 0,
    this.borderRadius,
    this.width = double.maxFinite,
    this.height = 52,
    this.text,
    this.textStyle,
    this.widget,
    this.isLoading = false,
    required this.onTap,
    this.isDisable = false,
    this.isBoldText = false,
    this.materialTapTargetSize = MaterialTapTargetSize.shrinkWrap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        elevation: elevation,
        highlightElevation: elevation,
        onPressed: isLoading ? (){} : onTap,
        materialTapTargetSize: materialTapTargetSize,
        shape: RoundedRectangleBorder(
          side: withBorderColor
              ? BorderSide(color: borderColor)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
        ),
        color: !isDisable ? buttonColor : Colors.grey[600],
        child: !isLoading
            ? Center(
                child: Transform.translate(
                offset: const Offset(0, 0),
                child: widget ??
                    Text(text!,
                        style: textStyle ?? TextStyles.white16semiBold),
              ))
            : const Center(child: CircularProgressIndicator(color: LightColorsManager.white,)),
      ),
    );
  }
}
