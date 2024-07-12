class ProfileModel {
  final bool isStarted;
  final String profile;
  final String name;
  final String? prizeIcon;
  final String bio;

  ProfileModel({
    required this.isStarted,
    required this.profile,
    required this.name,
    this.prizeIcon,
    required this.bio,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      isStarted: json['isStarted'],
      profile: json['profile'],
      name: json['name'],
      prizeIcon: json['prizeIcon'],
      bio: json['bio'],
    );
  }

  toJson(Map<String, dynamic> json) {
    json['isStarted'] = isStarted;
    json['profile'] = profile;
    json['name'] = name;
    json['prizeIcon'] = prizeIcon;
    json['bio'] = bio;
  }
}
