import 'dart:convert';

class Teacher {
  final String image;
  final String name;
  final String jobName;
  Teacher({
    required this.image,
    required this.name,
    required this.jobName,
  });

  Teacher copyWith({
    String? image,
    String? name,
    String? jobName,
  }) {
    return Teacher(
      image: image ?? this.image,
      name: name ?? this.name,
      jobName: jobName ?? this.jobName,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'image': image});
    result.addAll({'name': name});
    result.addAll({'jobName': jobName});

    return result;
  }

  factory Teacher.fromMap(Map<String, dynamic> map) {
    return Teacher(
      image: map['image'] ?? '',
      name: map['name'] ?? '',
      jobName: map['jobName'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Teacher.fromJson(String source) =>
      Teacher.fromMap(json.decode(source));

  @override
  String toString() => 'Teacher(image: $image, name: $name, jobName: $jobName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Teacher &&
        other.image == image &&
        other.name == name &&
        other.jobName == jobName;
  }

  @override
  int get hashCode => image.hashCode ^ name.hashCode ^ jobName.hashCode;
}
