import 'package:equatable/equatable.dart';

mixin Params {}

/// When there is no param, pass this object
class NoParams extends Equatable with Params {
  @override
  List<Object?> get props => [];
}
