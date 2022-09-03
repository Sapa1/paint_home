import 'package:flutter/widgets.dart';

import '../const/regex.dart';

class Validators {
  Validators._();

  static FormFieldValidator<String> multipleOR(List<FormFieldValidator<String>> validators) =>
      (value) {
        String? result;
        for (final validator in validators) {
          result = validator(value);
          if (result == null) return null;
        }
        return result;
      };

  static FormFieldValidator<String> multiple(List<FormFieldValidator<String>> validators) =>
      (value) {
        for (final validator in validators) {
          final result = validator(value);
          if (result != null) return result;
        }
        return null;
      };

  static FormFieldValidator required(String message) => (value) {
        if (value?.isEmpty ?? true) return message;
        return null;
      };

  static FormFieldValidator<String> min(int min, String message) => (value) {
        if (value?.isEmpty ?? true) return null;
        if ((value?.trim().length ?? 0) < min) return message;
        return null;
      };

  static FormFieldValidator<String> max(int max, String message, {bool canBeEmpty = false}) =>
      (value) {
        if (value?.isEmpty ?? true) {
          return canBeEmpty ? null : 'Campo obrigatório';
        }
        if ((value?.trim().length ?? 0) > max) return message;
        return null;
      };

  static FormFieldValidator validEmail(String message) => (value) {
        if (value?.isEmpty ?? true) return message;
        return RegExp(AppRegexp.email).hasMatch(value) ? null : message;
      };

  static FormFieldValidator equalValue(String message, TextEditingController controller) =>
      (value) {
        if (value != controller.text) {
          return message;
        } else {
          return null;
        }
      };
}
