class Employee {

  int? id;
  String? employee_name;
  int? employee_salary;
  int? employee_age;
  String? profile_imgae;

  Employee.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    employee_name = json["employee_name"];
    employee_salary = json["employee_salary"];
    employee_age = json["employee_age"];
    profile_imgae = json["profile_imgae"];
  }

  Map<String, dynamic> toJson() {
    return {
      "id" : id,
      "employee_name" : employee_name,
      "employee_salary" : employee_salary,
      "employee_age" : employee_age,
      "profile_imgae" : profile_imgae,
    };
  }

}