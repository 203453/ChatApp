import 'package:chat_app_1/features/user/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<void> getCreateCurrentUser(UserEntity user);
  Future<void> forgotPassword(String email);

  Future<bool> isSignIn();
  Future<void> signIn(UserEntity user);
  Future<void> signUp(UserEntity user);
  Future<void> signOut();
  Future<void> getUpdateUser(UserEntity user);
  Future<String> getCurrentUId();
  Stream<List<UserEntity>> getAllUsers(UserEntity user);
  Stream<List<UserEntity>> getSingleUser(UserEntity user);
}
