//tạo abstract class Employee
abstract class empLoyee {
  //thuoc tinh
  final String id;
  final String name;

  //contructor
  empLoyee(this.id, this.name);
  //in thong tin ve nhan vien
  void printInfo();
  //luong nhan vien
  double calculateSalary();
}

//tao interface
abstract class Workable {
  void doWork();
}

// class OfficeWorker kế thừa từ Employee và thực hiện interface Workable
class officeWorker extends empLoyee implements Workable {
  final String department;
  officeWorker(String id, String name, this.department) : super(id, name);

  @override
  void printInfo() {
    print('OfficeWorker => id: $id, Name: $name, Department: $department');
  }

  @override
  double calculateSalary() {
    return 5.000;
  }

  @override
  void doWork() {
    print('$name dang xu ly cac cong viec van phong trong phong $department');
  }
}

//class Techworker ke thua tu Employee va thuc hien interface Workable
class techworker extends empLoyee implements Workable {
  final String field;
  techworker(String id, String name, this.field) : super(id, name);

  //override
  @override
  void printInfo() {
    print('Techworker => id: $id, Name: $name, Field: $field');
  }

  @override
  double calculateSalary() {
    return 6.000;
  }

  @override
  void doWork() {
    print('$name dang lam cong viec ky thuat trong linh vuc $field');
  }
}

//tao class Company
class Company {
  //quan ly danh sach cac nhan vien
  List<String> employee = [];

  void addemployee() {}

  void printAllEmployees() {}
}

//chuong trinh chinh
void main() {
  // tao nhan vien
  var nvVanphong = officeWorker('1234ABC', 'Hai', 'marketing');
  var nvKythuat = techworker('7563BCD', 'Hoang', 'Ky thuat phan mem');
  // in nv
  nvVanphong.printInfo();
  nvKythuat.printInfo();
  //mo ta cong viec
  nvVanphong.doWork();
  nvKythuat.doWork();
}
