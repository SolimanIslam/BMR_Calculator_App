import 'package:bmr_calculator/constants.dart';

//Revised Harris-Benedict Equation:
// For men:
// BMR = 13.397W + 4.799H - 5.677A + 88.362
// For women:
// BMR = 9.247W + 3.098H - 4.330A + 447.593

class BmrBrain {
  BmrBrain(
      {required this.weight,
      required this.height,
      required this.gender,
      required this.age});

  Gender gender;
  int weight;
  int age;
  double height;

  double calculateBmr() {
    if (gender == Gender.male) {
      return (13.397 * weight + 4.799 * height - 5.677 * age + 88.362);
    } else {
      return (9.247 * weight + 3.098 * height - 4.330 * age + 447.593);
    }
  }
}
