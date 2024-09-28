// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceUser _$ServiceUserFromJson(Map<String, dynamic> json) {
  return _ServiceUser.fromJson(json);
}

/// @nodoc
mixin _$ServiceUser {
  String get id => throw _privateConstructorUsedError;
  bool get isSubscribed => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceUserCopyWith<ServiceUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceUserCopyWith<$Res> {
  factory $ServiceUserCopyWith(
          ServiceUser value, $Res Function(ServiceUser) then) =
      _$ServiceUserCopyWithImpl<$Res, ServiceUser>;
  @useResult
  $Res call({String id, bool isSubscribed, String name});
}

/// @nodoc
class _$ServiceUserCopyWithImpl<$Res, $Val extends ServiceUser>
    implements $ServiceUserCopyWith<$Res> {
  _$ServiceUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isSubscribed = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceUserImplCopyWith<$Res>
    implements $ServiceUserCopyWith<$Res> {
  factory _$$ServiceUserImplCopyWith(
          _$ServiceUserImpl value, $Res Function(_$ServiceUserImpl) then) =
      __$$ServiceUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isSubscribed, String name});
}

/// @nodoc
class __$$ServiceUserImplCopyWithImpl<$Res>
    extends _$ServiceUserCopyWithImpl<$Res, _$ServiceUserImpl>
    implements _$$ServiceUserImplCopyWith<$Res> {
  __$$ServiceUserImplCopyWithImpl(
      _$ServiceUserImpl _value, $Res Function(_$ServiceUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isSubscribed = null,
    Object? name = null,
  }) {
    return _then(_$ServiceUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceUserImpl implements _ServiceUser {
  const _$ServiceUserImpl(
      {required this.id, required this.isSubscribed, required this.name});

  factory _$ServiceUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceUserImplFromJson(json);

  @override
  final String id;
  @override
  final bool isSubscribed;
  @override
  final String name;

  @override
  String toString() {
    return 'ServiceUser(id: $id, isSubscribed: $isSubscribed, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isSubscribed, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceUserImplCopyWith<_$ServiceUserImpl> get copyWith =>
      __$$ServiceUserImplCopyWithImpl<_$ServiceUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceUserImplToJson(
      this,
    );
  }
}

abstract class _ServiceUser implements ServiceUser {
  const factory _ServiceUser(
      {required final String id,
      required final bool isSubscribed,
      required final String name}) = _$ServiceUserImpl;

  factory _ServiceUser.fromJson(Map<String, dynamic> json) =
      _$ServiceUserImpl.fromJson;

  @override
  String get id;
  @override
  bool get isSubscribed;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ServiceUserImplCopyWith<_$ServiceUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
