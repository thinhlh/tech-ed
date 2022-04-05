import 'dart:convert';

import 'package:equatable/equatable.dart';

class ResponseModel extends Equatable {
  final bool success;
  final String? message;
  final dynamic data;

  const ResponseModel._internal(this.success, this.message, this.data);

  factory ResponseModel.fromMap(Map<String, dynamic> map) {
    return ResponseModel._internal(
      map['success'],
      map['message'],
      map['data'],
    );
  }

  factory ResponseModel.fromJson(String source) {
    return ResponseModel.fromMap(json.decode(source));
  }

  @override
  List<Object?> get props => [success, message, data];
}
