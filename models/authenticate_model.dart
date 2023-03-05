class AuthenticateModel {
  String name;
  String email;
  int uid;
  int id;
  String accessToken;
  String tokenType;

  AuthenticateModel(
      {required this.name,
      required this.email,
      required this.uid,
      required this.id,
      required this.accessToken,
      required this.tokenType});

  String getEmail() {
    return email;
  }

  String getAccessToken() {
    return accessToken;
  }

  factory AuthenticateModel.fromJson(Map<String, dynamic> json) {
    return AuthenticateModel(
        name: json['name'],
        email: json['email'],
        uid: json['uid'],
        id: json['id'],
        accessToken: json['access_token'],
        tokenType: json['token_type']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['uid'] = uid;
    data['id'] = id;
    data['access_token'] = accessToken;
    data['token_type'] = tokenType;
    return data;
  }
}
