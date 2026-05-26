class JobModel {
  int? id;
  String companyName;
  String jobRole;
  String status;
  String appliedDate;

  JobModel({
    this.id,
    required this.companyName,
    required this.jobRole,
    required this.status,
    required this.appliedDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'companyName': companyName,
      'jobRole': jobRole,
      'status': status,
      'appliedDate': appliedDate,
    };
  }

  factory JobModel.fromMap(Map<String, dynamic> map) {
    return JobModel(
      id: map['id'],
      companyName: map['companyName'],
      jobRole: map['jobRole'],
      status: map['status'],
      appliedDate: map['appliedDate'],
    );
  }
}