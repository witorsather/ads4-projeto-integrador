class TokenModel {
  int id;
  String accessToken;
  String tokenType;

  TokenModel(
      {required this.id, required this.accessToken, required this.tokenType});

  String getAccessToken() {
    return accessToken;
  }

  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return TokenModel(
        id: json['id'],
        accessToken: json['access_token'],
        tokenType: json['token_type']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['access_token'] = accessToken;
    data['token_type'] = tokenType;
    return data;
  }
}
