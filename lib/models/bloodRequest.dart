class BloodRequest {
  String id, nic, group, city, hospitalName, name, contactNumber;

  BloodRequest();

  BloodRequest.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    nic = map['nic'];
    group = map['group'];
    city = map['city'];
    hospitalName = map['hospitalName'];
    name = map['name'];
    contactNumber = map['contactNumber'];
  }

  toMap() {
    var map = Map<String, dynamic>();
    map['group'] = group;
    map['nic'] = nic;
    map['city'] = city;
    map['hospitalName'] = hospitalName;
    map['name'] = name;
    map['contactNumber'] = contactNumber;
    return map;
  }

  validateAll() {
    return !((group == null || group == "") ||
        (nic == null || nic == "") ||
        (city == null || city == "") ||
        (hospitalName == null || hospitalName == "") ||
        (name == null || name == "") ||
        (contactNumber == null || contactNumber == ""));
  }
}
