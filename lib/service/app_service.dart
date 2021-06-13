import 'package:sinopsis_film/model/model.dart';
import 'package:sinopsis_film/repository/student_repository.dart';
import 'package:sinopsis_film/service/student_service.dart';
import 'package:sqflite/sqflite.dart';

StudentService _studentService = StudentService(StudentRepository(Model.getInstance()));

class AppService{

  static StudentService get getStudent => _studentService;

  static Future<Database> openDB(){
    return Model().opendDB();
  }

  static Future<void> closeDB(){
    return Model().closeDB();
  }
}