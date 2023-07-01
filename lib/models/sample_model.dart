// To parse this JSON data, do
//
//     final sampleModel = sampleModelFromJson(jsonString);

import 'dart:convert';

SampleModel sampleModelFromJson(String str) =>
    SampleModel.fromJson(json.decode(str));

String sampleModelToJson(SampleModel data) => json.encode(data.toJson());

class SampleModel {
  final int status;
  final String message;
  final int userId;
  final String xVal;
  final String userRight;
  final int role;
  final String userName;
  final String isDefautCompanyName;
  final String isDefaultCompanyId;
  final int noOfUser;
  final int noOfCompany;
  final String logo;
  final String communityRights;
  final List<CaptionSetting> captionSetting;
  final List<SysNav0> sysNav0;
  final List<SysNav1> sysNav1;

  SampleModel({
    required this.status,
    required this.message,
    required this.userId,
    required this.xVal,
    required this.userRight,
    required this.role,
    required this.userName,
    required this.isDefautCompanyName,
    required this.isDefaultCompanyId,
    required this.noOfUser,
    required this.noOfCompany,
    required this.logo,
    required this.communityRights,
    required this.captionSetting,
    required this.sysNav0,
    required this.sysNav1,
  });

  factory SampleModel.fromJson(Map<String, dynamic> json) => SampleModel(
        status: json["Status"],
        message: json["Message"],
        userId: json["UserID"],
        xVal: json["xVal"],
        userRight: json["UserRight"],
        role: json["Role"],
        userName: json["UserName"],
        isDefautCompanyName: json["ISDefautCompanyName"],
        isDefaultCompanyId: json["IsDefaultCompanyID"],
        noOfUser: json["NoOfUser"],
        noOfCompany: json["NoOfCompany"],
        logo: json["logo"],
        communityRights: json["CommunityRights"],
        captionSetting: List<CaptionSetting>.from(
            json["CaptionSetting"].map((x) => CaptionSetting.fromJson(x))),
        sysNav0:
            List<SysNav0>.from(json["SysNav0"].map((x) => SysNav0.fromJson(x))),
        sysNav1:
            List<SysNav1>.from(json["SysNav1"].map((x) => SysNav1.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Status": status,
        "Message": message,
        "UserID": userId,
        "xVal": xVal,
        "UserRight": userRight,
        "Role": role,
        "UserName": userName,
        "ISDefautCompanyName": isDefautCompanyName,
        "IsDefaultCompanyID": isDefaultCompanyId,
        "NoOfUser": noOfUser,
        "NoOfCompany": noOfCompany,
        "logo": logo,
        "CommunityRights": communityRights,
        "CaptionSetting":
            List<dynamic>.from(captionSetting.map((x) => x.toJson())),
        "SysNav0": List<dynamic>.from(sysNav0.map((x) => x.toJson())),
        "SysNav1": List<dynamic>.from(sysNav1.map((x) => x.toJson())),
      };
}

class CaptionSetting {
  final String mainId;
  final MainDescr mainDescr;
  final String subId;
  final String subDescr;
  final String selectedValue;

  CaptionSetting({
    required this.mainId,
    required this.mainDescr,
    required this.subId,
    required this.subDescr,
    required this.selectedValue,
  });

  factory CaptionSetting.fromJson(Map<String, dynamic> json) => CaptionSetting(
        mainId: json["MainId"],
        mainDescr: mainDescrValues.map[json["MainDescr"]]!,
        subId: json["SubID"],
        subDescr: json["SubDescr"],
        selectedValue: json["SelectedValue"],
      );

  Map<String, dynamic> toJson() => {
        "MainId": mainId,
        "MainDescr": mainDescrValues.reverse[mainDescr],
        "SubID": subId,
        "SubDescr": subDescr,
        "SelectedValue": selectedValue,
      };
}

enum MainDescr { CONTACT, CUSTOMER, ORDER }

final mainDescrValues = EnumValues({
  "Contact": MainDescr.CONTACT,
  "Customer": MainDescr.CUSTOMER,
  "Order": MainDescr.ORDER
});

class SysNav0 {
  final int moduleid;
  final String modulename;
  final int parentmoduleid;
  final String optionid;
  final String description;
  final int seqno;
  final SysNav0Bgcolor bgcolor;
  final SysNav0Bgcolor forecolor;
  final Height height;
  final Width width;
  final String imginfo;
  final String tooltipdescription;
  final String link;
  final String captionid;
  final Recenable recenable;
  final int layout;
  final String divName;
  final int divHeight;
  final int divWidth;
  final int id;
  final int roleId;
  final int userId;
  final String optionId1;
  final String extraParam;
  final bool recEnable1;
  final DateTime recDt;
  final DateTime recAddDt;
  final int recUser;

  SysNav0({
    required this.moduleid,
    required this.modulename,
    required this.parentmoduleid,
    required this.optionid,
    required this.description,
    required this.seqno,
    required this.bgcolor,
    required this.forecolor,
    required this.height,
    required this.width,
    required this.imginfo,
    required this.tooltipdescription,
    required this.link,
    required this.captionid,
    required this.recenable,
    required this.layout,
    required this.divName,
    required this.divHeight,
    required this.divWidth,
    required this.id,
    required this.roleId,
    required this.userId,
    required this.optionId1,
    required this.extraParam,
    required this.recEnable1,
    required this.recDt,
    required this.recAddDt,
    required this.recUser,
  });

  factory SysNav0.fromJson(Map<String, dynamic> json) => SysNav0(
        moduleid: json["moduleid"],
        modulename: json["modulename"],
        parentmoduleid: json["parentmoduleid"],
        optionid: json["optionid"],
        description: json["description"],
        seqno: json["seqno"],
        bgcolor: sysNav0BgcolorValues.map[json["bgcolor"]]!,
        forecolor: sysNav0BgcolorValues.map[json["forecolor"]]!,
        height: heightValues.map[json["height"]]!,
        width: widthValues.map[json["width"]]!,
        imginfo: json["imginfo"],
        tooltipdescription: json["tooltipdescription"],
        link: json["link"],
        captionid: json["captionid"],
        recenable: recenableValues.map[json["recenable"]]!,
        layout: json["layout"],
        divName: json["div_name"],
        divHeight: json["div_height"],
        divWidth: json["div_width"],
        id: json["ID"],
        roleId: json["RoleID"],
        userId: json["UserID"],
        optionId1: json["OptionID1"],
        extraParam: json["ExtraParam"],
        recEnable1: json["RecEnable1"],
        recDt: DateTime.parse(json["RecDt"]),
        recAddDt: DateTime.parse(json["RecAddDt"]),
        recUser: json["RecUser"],
      );

  Map<String, dynamic> toJson() => {
        "moduleid": moduleid,
        "modulename": modulename,
        "parentmoduleid": parentmoduleid,
        "optionid": optionid,
        "description": description,
        "seqno": seqno,
        "bgcolor": sysNav0BgcolorValues.reverse[bgcolor],
        "forecolor": sysNav0BgcolorValues.reverse[forecolor],
        "height": heightValues.reverse[height],
        "width": widthValues.reverse[width],
        "imginfo": imginfo,
        "tooltipdescription": tooltipdescription,
        "link": link,
        "captionid": captionid,
        "recenable": recenableValues.reverse[recenable],
        "layout": layout,
        "div_name": divName,
        "div_height": divHeight,
        "div_width": divWidth,
        "ID": id,
        "RoleID": roleId,
        "UserID": userId,
        "OptionID1": optionId1,
        "ExtraParam": extraParam,
        "RecEnable1": recEnable1,
        "RecDt": recDt.toIso8601String(),
        "RecAddDt": recAddDt.toIso8601String(),
        "RecUser": recUser,
      };
}

enum SysNav0Bgcolor { E2_EAFB, FFFF }

final sysNav0BgcolorValues = EnumValues(
    {"#e2eafb": SysNav0Bgcolor.E2_EAFB, "#ffff": SysNav0Bgcolor.FFFF});

enum Height { THE_120_PX, THE_95_PX }

final heightValues =
    EnumValues({"120px": Height.THE_120_PX, "95px": Height.THE_95_PX});

enum Recenable { TRUE }

final recenableValues = EnumValues({"TRUE": Recenable.TRUE});

enum Width { THE_300_PX, THE_220_PX }

final widthValues =
    EnumValues({"220px": Width.THE_220_PX, "300px": Width.THE_300_PX});

class SysNav1 {
  final int submoduleid;
  final String modulename;
  final int moduleid;
  final String optionid;
  final int seqno;
  final SysNav1Bgcolor bgcolor;
  final SysNav1Bgcolor forecolor;
  final int rowno;
  final int columnno;
  final String link;
  final Sectionheading sectionheading;
  final int id;
  final int roleId;
  final int userId;
  final String optionId1;
  final String extraParam;
  final bool recEnable;
  final DateTime recDt;
  final DateTime recAddDt;
  final int recUser;

  SysNav1({
    required this.submoduleid,
    required this.modulename,
    required this.moduleid,
    required this.optionid,
    required this.seqno,
    required this.bgcolor,
    required this.forecolor,
    required this.rowno,
    required this.columnno,
    required this.link,
    required this.sectionheading,
    required this.id,
    required this.roleId,
    required this.userId,
    required this.optionId1,
    required this.extraParam,
    required this.recEnable,
    required this.recDt,
    required this.recAddDt,
    required this.recUser,
  });

  factory SysNav1.fromJson(Map<String, dynamic> json) => SysNav1(
        submoduleid: json["submoduleid"],
        modulename: json["modulename"],
        moduleid: json["moduleid"],
        optionid: json["optionid"],
        seqno: json["seqno"],
        bgcolor: sysNav1BgcolorValues.map[json["bgcolor"]]!,
        forecolor: sysNav1BgcolorValues.map[json["forecolor"]]!,
        rowno: json["rowno"],
        columnno: json["columnno"],
        link: json["link"],
        sectionheading: sectionheadingValues.map[json["sectionheading"]]!,
        id: json["ID"],
        roleId: json["RoleID"],
        userId: json["UserID"],
        optionId1: json["OptionID1"],
        extraParam: json["ExtraParam"],
        recEnable: json["RecEnable"],
        recDt: DateTime.parse(json["RecDt"]),
        recAddDt: DateTime.parse(json["RecAddDt"]),
        recUser: json["RecUser"],
      );

  Map<String, dynamic> toJson() => {
        "submoduleid": submoduleid,
        "modulename": modulename,
        "moduleid": moduleid,
        "optionid": optionid,
        "seqno": seqno,
        "bgcolor": sysNav1BgcolorValues.reverse[bgcolor],
        "forecolor": sysNav1BgcolorValues.reverse[forecolor],
        "rowno": rowno,
        "columnno": columnno,
        "link": link,
        "sectionheading": sectionheadingValues.reverse[sectionheading],
        "ID": id,
        "RoleID": roleId,
        "UserID": userId,
        "OptionID1": optionId1,
        "ExtraParam": extraParam,
        "RecEnable": recEnable,
        "RecDt": recDt.toIso8601String(),
        "RecAddDt": recAddDt.toIso8601String(),
        "RecUser": recUser,
      };
}

enum SysNav1Bgcolor { FFFF, EMPTY }

final sysNav1BgcolorValues =
    EnumValues({"": SysNav1Bgcolor.EMPTY, "#ffff": SysNav1Bgcolor.FFFF});

enum Sectionheading { ENTRY, REPORT }

final sectionheadingValues = EnumValues(
    {"Entry": Sectionheading.ENTRY, "Report": Sectionheading.REPORT});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
