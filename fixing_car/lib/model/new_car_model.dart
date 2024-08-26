
class Car {
  String mark;
  String model;
  int year;
  Car({
    required this.mark,
    required this.model,
    required this.year,
  });

  toJson(){
    return {
      'mark': mark,
      'model': model,
      'year': year,
    };
  }

  fromJson(jsonData) {
    return Car(
        mark: jsonData['mark'],
        model: jsonData['model'],
        year: jsonData['year'],
        );
  }
}
