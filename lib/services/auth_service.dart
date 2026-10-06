import '../models/user_model.dart';

class AuthService {
  Future<UserModel?> signInWithEmailAndPassword(String email, String password) async {
    // Stub implementation
    return UserModel(
      id: 'usr_1',
      email: email,
      displayName: 'Demo User',
    );
  }

  Future<UserModel?> registerWithEmailAndPassword(
      String email, String password, String name) async {
    // Stub implementation
    return UserModel(
      id: 'usr_2',
      email: email,
      displayName: name,
    );
  }

  Future<void> signOut() async {
    // Stub implementation
  }

  Future<void> sendPasswordResetEmail(String email) async {
    // Stub implementation
  }
}
