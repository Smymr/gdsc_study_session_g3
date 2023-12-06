import 'dart:io';
import 'dart:async';

Future<void> main() async {
 
  print('Enter the First number: ');
  num? num1 = num.parse(stdin.readLineSync()!);
  print('Enter the Second number: ');
  num? num2 = num.parse(stdin.readLineSync()!);

  Calc calc1 = Calc();
  String? Op;
  print('Enter the operation (- , + , / , * )');
  Op = stdin.readLineSync();

  switch (Op) {
    case '+':{ print('$num1 + $num2 is equal to: ');
        await calc1.addition(num1, num2);
        break;
      }

    case '-':{ print('$num1 - $num2 is equal to: ');
        await calc1.subtraction(num1, num2);
        break;
      }

    case '*': { print('$num1 * $num2 is equal to: ');
        await calc1.multiplication(num1, num2);
        break;
      }

    case '/': { print('$num1 / $num2 is equal to: ');
        await calc1.division(num1, num2);
        break;
      }
      
    default: {
        print('Invalid operation');
      }
  }
}

class Calc {
  Future<void> addition(num num1, num num2) async {
    await Future.delayed(Duration(seconds: 5), () => print(num1 + num2));
  }
 Future<void> multiplication(num num1, num num2) async {
    await Future.delayed(Duration(seconds: 5), () => print(num1 * num2));
  }
  Future<void> subtraction(num num1, num num2) async {
    await Future.delayed(Duration(seconds: 5), () => print(num1 - num2));
  }
  Future<void> division(num num1, num num2) async {
   await Future.delayed(Duration(seconds: 5), () => print(num1 / num2));
    } 
  }

