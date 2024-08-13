// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import '../../../Model/addUsermodel.dart';
// import '../repository/user_repositrory.dart';
//
//
// final controllProvider=Provider((ref) => AddUserController(addUserRepository:ref.watch(addUserRepositoryProvider)),);
//
// class AddUserController {
//
//   final AddUserRepository _addUserRepository;
//   AddUserController({required AddUserRepository addUserRepository}):_addUserRepository=addUserRepository;
//   user({required AddUserModel details1}){
//     _addUserRepository.userAdd(adduserdata: details1);
//     }
// // }