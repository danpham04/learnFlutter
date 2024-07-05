class UserModel {
  String? image;
  String? name;
  String? mail;
  String? address;
  String? dateOfBirth;
  String? nationality;

  UserModel(
      {this.image,
      this.name,
      this.mail,
      this.address,
      this.dateOfBirth,
      this.nationality});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        image: map['imgavt'],
        name: map['name'],
        mail: map['mail'],
        address: map['address'],
        dateOfBirth: map['dateOfBirth'],
        nationality: map['nationality']);
  }
  
}
