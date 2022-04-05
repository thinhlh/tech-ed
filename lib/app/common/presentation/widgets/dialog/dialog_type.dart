import 'package:flutter/material.dart';
import 'package:tech_ed/config/colors.dart';

enum DialogType {
  success,
  error,
  info,
}

extension DialogDetail on DialogType {
  String get title {
    switch (this) {
      case DialogType.success:
        return 'Success!';
      case DialogType.error:
        return 'Oh Snap!';
      case DialogType.info:
        return 'Info!';
    }
  }

  String get actionString {
    switch (this) {
      case DialogType.success:
        return 'Continue';
      case DialogType.error:
        return 'Try Again';
      case DialogType.info:
        return 'Okay';
    }
  }

  Color get primaryColor {
    switch (this) {
      case DialogType.success:
        return AppColors.success;
      case DialogType.error:
        return AppColors.error;
      case DialogType.info:
        return AppColors.info;
    }
  }

  Color get primaryColorText {
    switch (this) {
      case DialogType.success:
        return AppColors.successText;
      case DialogType.error:
        return AppColors.errorText;
      case DialogType.info:
        return AppColors.infoText;
    }
  }

  IconData get displayIcon {
    switch (this) {
      case DialogType.success:
        return Icons.check;
      case DialogType.error:
        return Icons.priority_high;
      case DialogType.info:
        return Icons.question_mark;
    }
  }

  Color get iconColor {
    switch (this) {
      case DialogType.success:
        return AppColors.neutral.shade50;
      case DialogType.error:
        return AppColors.neutral.shade50;
      case DialogType.info:
        return AppColors.neutral.shade800;
    }
  }
}
