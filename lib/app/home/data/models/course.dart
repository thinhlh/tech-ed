import 'dart:convert';

class Course {
  final String image;
  final String courseName;
  final String teacherName;
  final String tag;
  final int star;
  final int voteQuantity;
  Course({
    required this.image,
    required this.courseName,
    required this.teacherName,
    required this.tag,
    required this.star,
    required this.voteQuantity,
  });

  Course copyWith({
    String? image,
    String? courseName,
    String? teacherName,
    String? tag,
    int? star,
    int? voteQuantity,
  }) {
    return Course(
      image: image ?? this.image,
      courseName: courseName ?? this.courseName,
      teacherName: teacherName ?? this.teacherName,
      tag: tag ?? this.tag,
      star: star ?? this.star,
      voteQuantity: voteQuantity ?? this.voteQuantity,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'image': image});
    result.addAll({'courseName': courseName});
    result.addAll({'teacherName': teacherName});
    result.addAll({'tag': tag});
    result.addAll({'star': star});
    result.addAll({'voteQuantity': voteQuantity});

    return result;
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      image: map['image'] ?? '',
      courseName: map['courseName'] ?? '',
      teacherName: map['teacherName'] ?? '',
      tag: map['tag'] ?? '',
      star: map['star']?.toInt() ?? 0,
      voteQuantity: map['voteQuantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Course.fromJson(String source) => Course.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Course(image: $image, courseName: $courseName, teacherName: $teacherName, tag: $tag, star: $star, voteQuantity: $voteQuantity)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Course &&
        other.image == image &&
        other.courseName == courseName &&
        other.teacherName == teacherName &&
        other.tag == tag &&
        other.star == star &&
        other.voteQuantity == voteQuantity;
  }

  @override
  int get hashCode {
    return image.hashCode ^
        courseName.hashCode ^
        teacherName.hashCode ^
        tag.hashCode ^
        star.hashCode ^
        voteQuantity.hashCode;
  }
}
