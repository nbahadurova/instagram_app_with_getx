class ShowCommentResponse {
  final bool? success;
  final String? message;
  final List<Datum>? data;

  ShowCommentResponse({
    this.success,
    this.message,
    this.data,
  });

  factory ShowCommentResponse.fromJson(Map<String, dynamic> json) =>
      ShowCommentResponse(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}
class Datum {
  final int? id;
  final String? text;
  final User? user;
  final String? timeDiff;

  Datum({
    this.id,
    this.text,
    this.user,
    this.timeDiff,
  });
    static List<Datum> orderByTimeDiff(List<Datum> list) {
    list.sort((a, b) => b.timeDiff!.compareTo(a.timeDiff!));
    return list;
  }

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
  final Username? username;
  final Email? email;
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
        username: usernameValues.map[json["username"]]!,
        email: emailValues.map[json["email"]]!,
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
        "username": usernameValues.reverse[username],
        "email": emailValues.reverse[email],
        "phone": phone,
        "image": image,
        "follower_count": followerCount,
        "follow_count": followCount,
        "post_count": postCount,
        "thumbnail_image": thumbnailImage,
        "followed": followed,
      };
}

enum Email { RASHADMAMMADOFF99_GMAIL_COM, VALIYEVHSN_GMAIL_COM }

final emailValues = EnumValues({
  "rashadmammadoff99@gmail.com": Email.RASHADMAMMADOFF99_GMAIL_COM,
  "valiyevhsn@gmail.com": Email.VALIYEVHSN_GMAIL_COM
});

enum Username { HUSEYN123, RESHAD99 }

final usernameValues = EnumValues(
    {"huseyn123": Username.HUSEYN123, "reshad99": Username.RESHAD99});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
