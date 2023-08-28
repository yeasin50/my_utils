part of my_utils;

extension MySpacerFromNumber on num {
  SizedBox get verticalSpacer => SizedBox(height: toDouble());
  SizedBox get horizontalSpacer => SizedBox(width: toDouble());
}
