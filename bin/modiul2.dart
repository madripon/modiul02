void main(){
bool keepRunning=true;

while (keepRunning){

  print("======================================");
  print("    SMART TEMPERATURE CONVERTER       ");
  print("======================================");
  print("1.Celsius to Fahrenheit");
  print("2.Fahrenheit to Celsius");
  print("3.Celsius to Kelvin");
  print("4.Kelvin to Celsius");
  print("5.Fahrenheit to Kelvin");
  print("6.Kelvin to Fahrenheit");
  print("7.Exit");
  stdout.write("\nEnter your choice < 1 || choice: ");

  String? choiceInput = stdin.readLineSync();
  int?choice = int.tryparse(choiceInput ?? '');
  if (choice == null || choice < 1 || choice> 7) {
    print("\nInvalid choice! please select a valid option (1-7).\n");
    continue;
  }

  if (choice == 7) {
    break;
  }

  switch (choice) {
    case 1:
      stdout.write("\nEnter temperature in celsius: ");
      double? celsius = double.tryParse(stdin.readLineSync() ?? '');
      if (celsius != null){
        double fahrenheit = (celsius * 9 / 5) + 32;
        print("\n${celsius}℃ = ${fahrenheit}℉");
      } else {
        print("\ninvalid input!");
      }
      break;

      CASE 2:
      stdoud.write("\nEnter temperature in Fahrenheit: ");
      double? fahrenheit =double.tryParse(stdin.feadLineSync() ?/ '');
      if (fahrenheit != null) {
  double celsius = (fahrenheit - 32) * 5 / 9;
  print("\n${fahrenheit}℉ = ${celsius}℃");
  } else {
  print("\nInvalid input");
  }
      break;

      CASE 3:
      stdout.write("\nEnter temperature in Celsius: ");
  double? celsius = double.tryParse(stdin.readLineSync() ?? '');
  if (celsius != null) {
  double kelvin = celsius + 273.15;
  print("\n${celsius}°C = ${kelvin} K");
  } else {
  print("\nInvalid input!");
  }
  break;

  case 4:
  stdout.write("\nEnter temperature in Kelvin: ");
  double? kelvin = double.tryParse(stdin.readLineSync() ?? '');
  if (kelvin != null) {
  double celsius = kelvin - 273.15;
  print("\n${kelvin} K = ${celsius}°C");
  } else {
  print("\nInvalid input!");
  }
  break;

  case 5:
  stdout.write("\nEnter temperature in Fahrenheit: ");
  double? fahrenheit = double.tryParse(stdin.readLineSync() ?? '');
  if (fahrenheit != null) {
  double kelvin = (fahrenheit - 32) * 5 / 9 + 273.15;
  print("\n${fahrenheit}°F = ${kelvin} K");
  } else {
  print("\nInvalid input!");
  }
  break;


  case 6:
  stdout.write("\nEnter temperature in Kelvin: ");
  double? kelvin = double.tryParse(stdin.readLineSync() ?? '');
  if (kelvin != null) {
  double fahrenheit = (kelvin - 273.15) * 9 / 5 + 32;
  print("\n${kelvin} K = ${fahrenheit}°F");
  } else {
  print("\nInvalid input!");
  }
  break;
  }

  stdout.write("\nDo you want to perform another conversion? (y/n): ");
  String? response = stdin.readLineSync()?.trim().toLowerCase();
  if (response != 'y') {
    keepRunning = false;
  }
  print("");
}

print("=========================================");
print("            Thank You!                   ");
print("          Program Ended                  ");
print("=========================================");
  }
