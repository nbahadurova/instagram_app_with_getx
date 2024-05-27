class FavoriteResponse {
  final bool? success;
  final String? message;

  FavoriteResponse({
    this.success,
    this.message,
  });

  factory FavoriteResponse.fromJson(Map<String, dynamic> json) =>
      FavoriteResponse(
        success: json["success"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
      };
}
