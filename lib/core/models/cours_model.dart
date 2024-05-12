// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
enum StatutCours{
    planned("PLANNED"),
    started("STARTED"),
    finished("FINISHED");
    final String value;
    const StatutCours(this.value);
}
class CoursModel {
     int id;
    String module;
    String professor;
    String status;
    String icon;
  CoursModel({
    required this.id,
    required this.module,
    required this.professor,
    required this.status,
    required this.icon,
  });
  

  CoursModel copyWith({
    int? id,
    String? module,
    String? professor,
    String? status,
    String? icon,
  }) {
    return CoursModel(
      id: id ?? this.id,
      module: module ?? this.module,
      professor: professor ?? this.professor,
      status: status ?? this.status,
      icon: icon ?? this.icon,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'module': module,
      'professor': professor,
      'status': status,
      'icon': icon,
    };
  }

  factory CoursModel.fromMap(Map<String, dynamic> map) {
    return CoursModel(
      id: map['id'] as int,
      module: map['module'] as String,
      professor: map['professor'] as String,
      status: map['status'] as String,
      icon: map['icon'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CoursModel.fromJson(String source) => CoursModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CoursModel(id: $id, module: $module, professor: $professor, status: $status, icon: $icon)';
  }

  @override
  bool operator ==(covariant CoursModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.module == module &&
      other.professor == professor &&
      other.status == status &&
      other.icon == icon;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      module.hashCode ^
      professor.hashCode ^
      status.hashCode ^
      icon.hashCode;
  }
}
