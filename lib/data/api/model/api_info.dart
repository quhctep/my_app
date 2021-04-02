class ApiInfo {
  final String infoName;
  final String infoText;
  final num infoNumber;

  ApiInfo.fromApi(Map<String, dynamic> map)
      : infoName = map['results']['info_name'],
        infoText = map['results']['info_text'],
        infoNumber = map['results']['info_number'];
}
