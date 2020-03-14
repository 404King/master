
class User {
  String urlPicture;//头像(暂定为图片地址)
  String nickname;//昵称
  String wCode; //微信号
  int gender; //性别 1：男 0：女
  String address; //地址
  String personalitySignature; //个性签名
  //二维码（暂未确定）
//  User(this.urlPicture, this.nickname, this.code, this.gender, this.address, this.personalitySignature);
  User();
  User.fromJson(Map<String, dynamic> json) {
    urlPicture = json["UrlPicture"];
    nickname = json["Nickname"];
    wCode = json["WCode"];
    gender = json["Gender"];
    address = json["Address"];
    personalitySignature = json["PersonalitySignature"];
  }

  Map<String, dynamic> toJson() => {
    "UrlPicture":urlPicture,
    "Nickname":nickname,
    "WCode":wCode,
    "Gender":gender,
    "Address":address,
    "PersonalitySignature":personalitySignature,
  };
}

class Contact {
  String urlPicture;
  String nickName;
  String name;
  String wCode;
  String address;
  Contact();
  Contact.fromJson(Map<String, dynamic> json) {
    urlPicture = json["UrlPicture"];
    nickName = json["NickName"];
    wCode = json["WCode"];
    name = json["Name"];
    address = json["Address"];
  }

  Map<String, dynamic> toJson() => {
    "UrlPicture" : urlPicture,
    "NickName" : nickName,
    "WCode" : wCode,
    "Address" : address,
  };
}