library my_utils;

import 'package:flutter/material.dart';

/// Returns a [SizedBox] with the given [num].
extension MySpacerFromNumber on num {
  @Deprecated('use `hSpace` instead')
  SizedBox get verticalSpacer => SizedBox(height: toDouble());

  //deprecated
  @Deprecated('use `wSpace` instead')
  SizedBox get horizontalSpacer => SizedBox(width: toDouble());

  /// Returns a [SizedBox] with the given [num] on vertical.
  /// ```dart
  /// 10.0.hSpace // SizedBox(height: 10.0)
  /// ```
  SizedBox get hSpace => SizedBox(height: toDouble());

  /// Returns a [SizedBox] with the given [num].
  ///
  /// ```dart
  /// 10.0.wSpace // SizedBox(width: 10.0)
  /// ```
  ///
  SizedBox get wSpace => SizedBox(width: toDouble());

  /// Returns a [SizedBox] with the given [num] on vertical and horizontal.
  ///
  /// ```dart
  /// 10.0.space // SizedBox(width: 10.0, height: 10.0)
  /// ```
  SizedBox get space => SizedBox(width: toDouble(), height: toDouble());
}
