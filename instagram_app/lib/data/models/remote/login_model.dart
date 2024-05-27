import 'dart:convert';
// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);


LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  final bool? success;
  final User? user;
  final String? accessToken;
  final String? tokenType;

  LoginResponse({
    this.success,
    this.user,
    this.accessToken,
    this.tokenType,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        success: json["success"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        accessToken: json["access_token"],
        tokenType: json["token_type"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "user": user?.toJson(),
        "access_token": accessToken,
        "token_type": tokenType,
      };
}

class User {
  final int? id;
  final String? username;
  final String? email;
  final String? phone;
  final String? image;
  final int? followerCount;
  final int? followCount;
  final int? postCount;
  final String? thumbnailImage;
  final bool? followed;

  User({
    this.id,
    this.username,
    this.email,
    this.phone,
    this.image,
    this.followerCount,
    this.followCount,
    this.postCount,
    this.thumbnailImage,
    this.followed,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        image: json["image"],
        followerCount: json["follower_count"],
        followCount: json["follow_count"],
        postCount: json["post_count"],
        thumbnailImage: json["thumbnail_image"],
        followed: json["followed"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "phone": phone,
        "image": image,
        "follower_count": followerCount,
        "follow_count": followCount,
        "post_count": postCount,
        "thumbnail_image": thumbnailImage,
        "followed": followed,
      };
}
