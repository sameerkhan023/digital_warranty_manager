import '../models/user_model.dart';

class UserService {
  Future<UserModel?> getUserProfile(String userId) async {
    return UserModel(
      id: userId,
      email: 'user@example.com',
      displayName: 'John Doe',
    );
  }

  Future<void> updateUserProfile(UserModel user) async {
    // Stub implementation
  }
}
