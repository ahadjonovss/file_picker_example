class JustModel{
  // "code": "currency",
  // "caption": "Currency",
  // "fullCaption": "Enter Currency",
  // "sort": 9,
  // "group": "COMMON",
  // "initial_value": "USD",
  // "regExp": "",
  // "required": true,
  // "type": "select",
  // "values":[
  // "USD",
  // "SO'M",
  // "RUBL"
  // ]

  String code;
  String caption;
  String fullCaption;
  num sort;
  String group;
  String initial_value;
  String regExp;
  bool required;
  String type;
  List values;

  JustModel({
    required this.required,
    required this.type,
    required this.values,
    required this.caption,
    required this.code,
    required this.fullCaption,
    required this.group,
    required this.initial_value,
    required this.regExp,
    required this.sort
});

  factory JustModel.fromJson(Map<String, dynamic> json) => JustModel(
    code: json["code"]??"",
    caption: json["caption"]??"",
    fullCaption: json["fullCaption"]??"",
    sort: json["sort"]??0,
    group: json["group"]??"",
    regExp: json["regExp"]??"",
    required: json["required"]??true,
    type: json["type"]??"",
    values: json["values"]??[],
    initial_value: json["initial_value"]??"",
  );
}