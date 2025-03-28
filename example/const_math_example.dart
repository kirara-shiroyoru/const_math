import 'package:const_math/const_math.dart';
import 'dart:math';

//to even shorten the name
typedef C = ConstMath;

void main() {
  //Use constable math functions for compile time value you don't want to hand
  //calculate and maintain readability.
  const test1 = C.sin(1);//0.8414709848078965
  const test2 = C.cos(1);//0.5403023058681397

  //the result just works like normal double
  const test3 = test1 + test2;//1.381773290676036
  const test4 = test1 - test2;//0.30116867893975685

  print('$test1,$test2,$test3, $test4');

  //you can also directly pass the value into a const constructor
  const rec = Rectangle(C.sqrt(2), C.cbrt(2), C.sqrt(5), C.sqrt(7));
  
  print(rec);
}
