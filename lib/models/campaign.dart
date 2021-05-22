class Campaign {
  String id,
      nic,
      name,
      city,
      date,
      location,
      contactPersonName,
      contactPersonNumber,
      contactPersonNumber2;

  Campaign();

  Campaign.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    nic = map['nic'];
    name = map['name'];
    location = map['location'];
    city = map['city'];
    date = map['date'];
    contactPersonName = map['contactPersonName'];
    contactPersonNumber = map['contactPersonNumber'];
    contactPersonNumber2 = map['contactPersonNumber2'];
  }

  toMap() {
    var map = new Map<String, dynamic>();
    map['nic'] = nic;
    map['name'] = name;
    map['location'] = location;
    map['city'] = city;
    map['date'] = date;
    map['contactPersonName'] = contactPersonName;
    map['contactPersonNumber'] = contactPersonNumber;
    map['contactPersonNumber2'] = contactPersonNumber2;
    return map;
  }

  validateAll() {
    return !((contactPersonName == null || contactPersonName == "") ||
        (nic == null || nic == "") ||
        (city == null || city == "") ||
        (date == null || date == "") ||
        (contactPersonNumber == null || contactPersonNumber == "") ||
        (name == null || name == "") ||
        (location == null || location == ""));
  }
}
