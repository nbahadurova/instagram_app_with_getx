class PostResponse {
  final bool? success;
  final List<Datum>? data;
  final Meta? meta;

  PostResponse({
    this.success,
    this.data,
    this.meta,
  });

  factory PostResponse.fromJson(Map<String, dynamic> json) => PostResponse(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta?.toJson(),
      };
}

class Datum {
  final int? id;
  final String? description;
  final int? likes;
  final int? comments;
  final bool? liked;
  final User? user;
  final List<Media>? media;

  Datum({
    this.id,
    this.description,
    this.likes,
    this.comments,
    this.liked,
    this.user,
    this.media,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        description: json["description"],
        likes: json["likes"],
        comments: json["comments"],
        liked: json["liked"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        media: json["media"] == null
            ? []
            : List<Media>.from(json["media"]!.map((x) => Media.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description,
        "likes": likes,
        "comments": comments,
        "liked": liked,
        "user": user?.toJson(),
        "media": media == null
            ? []
            : List<dynamic>.from(media!.map((x) => x.toJson())),
      };
}

class Media {
  final String? path;
  final Extension? extension;
  final MimeType? mimeType;
  final String? fileSize;
  final String? width;
  final String? height;

  Media({
    this.path,
    this.extension,
    this.mimeType,
    this.fileSize,
    this.width,
    this.height,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        path: json["path"],
        extension: extensionValues.map[json["extension"]]!,
        mimeType: mimeTypeValues.map[json["mime_type"]]!,
        fileSize: json["file_size"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "path": path,
        "extension": extensionValues.reverse[extension],
        "mime_type": mimeTypeValues.reverse[mimeType],
        "file_size": fileSize,
        "width": width,
        "height": height,
      };
}

enum Extension { JPG, PNG, WEBP }

final extensionValues = EnumValues(
    {"jpg": Extension.JPG, "png": Extension.PNG, "webp": Extension.WEBP});

enum MimeType { IMAGE_JPEG, IMAGE_PNG, IMAGE_WEBP }

final mimeTypeValues = EnumValues({
  "image/jpeg": MimeType.IMAGE_JPEG,
  "image/png": MimeType.IMAGE_PNG,
  "image/webp": MimeType.IMAGE_WEBP
});

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

enum Email { RASHADMAMMADOFF10_GMAIL_COM, RASHADMAMMADOFF99_GMAIL_COM }

final emailValues = EnumValues({
  "rashadmammadoff10@gmail.com": Email.RASHADMAMMADOFF10_GMAIL_COM,
  "rashadmammadoff99@gmail.com": Email.RASHADMAMMADOFF99_GMAIL_COM
});

enum Username { RESHAD55, RESHAD99 }

final usernameValues =
    EnumValues({"reshad55": Username.RESHAD55, "reshad99": Username.RESHAD99});

class Meta {
  final int? total;
  final int? count;
  final int? perPage;
  final int? currentPage;
  final int? totalPages;
  final dynamic nextPageUrl;

  Meta({
    this.total,
    this.count,
    this.perPage,
    this.currentPage,
    this.totalPages,
    this.nextPageUrl,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        total: json["total"],
        count: json["count"],
        perPage: json["per_page"],
        currentPage: json["current_page"],
        totalPages: json["total_pages"],
        nextPageUrl: json["next_page_url"],
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "count": count,
        "per_page": perPage,
        "current_page": currentPage,
        "total_pages": totalPages,
        "next_page_url": nextPageUrl,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
