import 'dart:convert';

class BaseError {
  final bool success;
  final String? message;
  final dynamic data;
  BaseError({
    required this.success,
    this.message,
    required this.data,
  });

  BaseError copyWith({
    bool? success,
    String? message,
    dynamic data,
  }) {
    return BaseError(
      success: success ?? this.success,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'success': success,
      'message': message,
      'data': data,
    };
  }

  factory BaseError.fromMap(Map<String, dynamic> map) {
    return BaseError(
      success: map['success'] ?? false,
      message: map['message'],
      data: map['data'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BaseError.fromJson(String source) =>
      BaseError.fromMap(json.decode(source));

  @override
  String toString() =>
      'BaseError(success: $success, message: $message, data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BaseError &&
        other.success == success &&
        other.message == message &&
        other.data == data;
  }

  @override
  int get hashCode => success.hashCode ^ message.hashCode ^ data.hashCode;
}
