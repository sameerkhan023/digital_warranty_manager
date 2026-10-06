class UserModel {
  final String id;
  final String email;
  final String displayName;
  final String? phoneNumber;
  final String? photoUrl;

  UserModel({
    required this.id,
    required this.email,
    required this.displayName,
    this.phoneNumber,
    this.photoUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'displayName': displayName,
      'phoneNumber': phoneNumber,
      'photoUrl': photoUrl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      email: map['email'] ?? '',
      displayName: map['displayName'] ?? '',
      phoneNumber: map['phoneNumber'],
      photoUrl: map['photoUrl'],
    );
  }
}
