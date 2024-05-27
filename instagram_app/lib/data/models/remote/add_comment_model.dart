class AddCommentResponse {
  final bool? success;
  final String? message;
  final Data? data;

  AddCommentResponse({
    this.success,
    this.message,
    this.data,
  });

  factory AddCommentResponse.fromJson(Map<String, dynamic> json) =>
      AddCommentResponse(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data?.toJson(),
      };
}

class Data {
  final int? id;
  final String? text;
  final User? user;
  final String? timeDiff;

  Data({
    this.id,
    this.text,
    this.user,
    this.timeDiff,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        text: json["text"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        timeDiff: json["timeDiff"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
        "user": user?.toJson(),
        "timeDiff": timeDiff,
      };
}

class User {
  final int? id;
  final String? username;
  final String? email;
  final String? phone;
  final dynamic image;
  final int? followerCount;
  final int? followCount;
  final int? postCount;
  final dynamic thumbnailImage;
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
