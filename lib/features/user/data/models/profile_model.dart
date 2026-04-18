import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required String id,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(JsonData json) =>
      _$ProfileModelFromJson(json);
}
