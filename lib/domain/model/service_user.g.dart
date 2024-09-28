// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceUserImpl _$$ServiceUserImplFromJson(Map<String, dynamic> json) =>
    _$ServiceUserImpl(
      id: json['id'] as String,
      isSubscribed: json['isSubscribed'] as bool,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ServiceUserImplToJson(_$ServiceUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isSubscribed': instance.isSubscribed,
      'name': instance.name,
    };
