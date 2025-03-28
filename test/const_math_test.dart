import 'package:const_math/const_math.dart';
import 'package:test/test.dart';
import 'dart:math';

extension on (num, num) {
  bool match([double precision = 1e-15]) =>
      ($1.abs() < precision && $2.abs() < precision) ||
      (this.$1 / this.$2 < 1 + precision && this.$1 / this.$2 > 1 - precision);
  bool diff([double precision = 1e-15]) =>
      (this.$1 - this.$2).abs() < precision;
}

void main() {
  group('Trigonal functions', () {
    test('ConstMath.sin()', () {
      for (int i = 0; i < 1000; ++i) {
        final testVal = ConstMath.pi() / 789 * i;
        expect((ConstMath.sin(testVal), sin(testVal)).diff(2.3e-16), isTrue);
      }
    });

    test('ConstMath.cos()', () {
      for (int i = 0; i < 1000; ++i) {
        final testVal = ConstMath.pi() / 789 * i;
        expect(
          (ConstMath.cos(testVal), cos(testVal)).diff(5e-16),
          isTrue,
          reason: '$testVal, ${ConstMath.cos(testVal)}, ${cos(testVal)}',
        );
      }
    });

    test('ConstMath.tan()', () {
      for (int i = 0; i < 1000; ++i) {
        final testVal = ConstMath.pi() * (i / 4000);
        final constTan = ConstMath.tan(testVal);
        final dartTan = tan(testVal);
        expect((constTan, dartTan).diff(1e-15), isTrue);
      }
      for (int i = 1001; i < 2000; ++i) {
        final testVal = ConstMath.pi() * (i / 4000);
        final constTan = ConstMath.tan(testVal);
        final dartTan = tan(testVal);
        expect((constTan, dartTan).match(1e-13), isTrue);
      }
    });
  });

  group('Log Functions', () {
    test('ConstMath.log()', () {
      for (int i = 1; i < 1000; ++i) {
        final testVal = i / 289;
        final constLog = ConstMath.log(testVal);
        final dartLog = log(testVal);
        expect((constLog, dartLog).diff(1e-15), isTrue);
        //print('x = $testVal,  $constLog,  $dartLog');
      }
      for (int i = 1000; i < 2000; ++i) {
        final testVal = i / 289;
        final constLog = ConstMath.log(testVal);
        final dartLog = log(testVal);
        expect((constLog, dartLog).match(1e-15), isTrue);
        //print('x = $testVal,  $constLog,  $dartLog');
      }
    });

    test('ConstMath.log2()', () {
      for (int i = 1; i < 1000; ++i) {
        final testVal = i / 289;
        final constLog = ConstMath.log2(testVal);
        final dartLog = log(testVal) / ln2;
        expect((constLog, dartLog).diff(2e-15), isTrue);
      }
      for (int i = 1000; i < 2000; ++i) {
        final testVal = i / 11;
        final constLog = ConstMath.log2(testVal);
        final dartLog = log(testVal) / ln2;
        expect((constLog, dartLog).match(1e-15), isTrue);
        //print('x = $testVal,  $constLog,  $dartLog');
      }
    });

    test('ConstMath.log10()', () {
      for (int i = 1; i < 1000; ++i) {
        final testVal = i / 289;
        final constLog = ConstMath.log10(testVal);
        final dartLog = log(testVal) / ln10;
        expect((constLog, dartLog).diff(1e-15), isTrue);
        //print('x = $testVal,  $constLog,  $dartLog');
      }
      for (int i = 1000; i < 2000; ++i) {
        final testVal = i / 289;
        final constLog = ConstMath.log10(testVal);
        final dartLog = log(testVal) / ln10;
        expect((constLog, dartLog).match(1e-15), isTrue);
        //print('x = $testVal,  $constLog,  $dartLog');
      }
    });
  });

  group('Root Functions', () {
    test('ConstMath.sqrt()', () {
      for (int i = 0; i < 1000; ++i) {
        final testVal = i / 300;
        final constSqrt = ConstMath.sqrt(testVal);
        final dartSqrt = sqrt(testVal);
        expect(
          (constSqrt, dartSqrt).diff(5e-16),
          isTrue,
          reason: 'x = $testVal,  $constSqrt,  $dartSqrt',
        );
      }
      double testVal2 = 1;
      for (int i = 0; i < 1000; ++i) {
        testVal2 *= 1.5;
        final constSqrt = ConstMath.sqrt(testVal2);
        final dartSqrt = sqrt(testVal2);
        expect((constSqrt, dartSqrt).match(5e-16), isTrue);
      }
      //expect(ConstMath.sqrt(-1), throwsA); //failed assertion
    });

    test('ConstMath.cbrt()', () {
      for (int i = 0; i < 100; ++i) {
        final testVal = (i - 50) / 5;
        final constCbrt = ConstMath.cbrt(testVal);
        final dartCbrt =
            testVal >= 0 ? pow(testVal, 1 / 3) : -pow(-testVal, 1 / 3);
        expect(
          (constCbrt, dartCbrt).diff(1e-14),
          isTrue,
          reason: '$testVal, $constCbrt, $dartCbrt',
        );
      }
      double testVal2 = 1;
      for (int i = 0; i < 1000; ++i) {
        testVal2 *= 1.5;
        final constCbrt = ConstMath.cbrt(testVal2);
        final dartCbrt = pow(testVal2, 1 / 3);
        expect((constCbrt, dartCbrt).match(1e-14), isTrue);
      }
    });

    test('ConstMath.rt5()', () {
      for (int i = 0; i < 100; ++i) {
        final testVal = (i - 50) / 5;
        final constRt5 = ConstMath.rt5(testVal);
        final dartRt5 =
            testVal >= 0 ? pow(testVal, 1 / 5) : -pow(-testVal, 1 / 5);
        expect(
          (constRt5, dartRt5).diff(1e-14),
          isTrue,
          reason: '$testVal, $constRt5, $dartRt5',
        );
      }
      //print(ConstMath.rt5(1024));
      double testVal2 = 1;
      for (int i = 0; i < 1000; ++i) {
        testVal2 *= 1.5;
        final constRt5 = ConstMath.rt5(testVal2);
        final dartRt5 = pow(testVal2, 1 / 5);
        //print('$testVal2, $constRt5, $dartRt5');
        expect(
          (constRt5, dartRt5).match(1e-14),
          isTrue,
          reason: '$testVal2, $constRt5, $dartRt5',
        );
      }
    });

    test('ConstMath.rt7()', () {
      for (int i = 0; i < 100; ++i) {
        final testVal = (i - 50) / 5;
        final constRt7 = ConstMath.rt7(testVal);
        final dartRt7 =
            testVal >= 0 ? pow(testVal, 1 / 7) : -pow(-testVal, 1 / 7);
        expect(
          (constRt7, dartRt7).diff(1e-14),
          isTrue,
          reason: '$testVal, $constRt7, $dartRt7',
        );
      }
      //print(ConstMath.rt5(1024));
      double testVal2 = 1;
      for (int i = 0; i < 1000; ++i) {
        testVal2 *= 1.5;
        final constRt7 = ConstMath.rt7(testVal2);
        final dartRt7 = pow(testVal2, 1 / 7);
        //print('$testVal2, $constRt5, $dartRt5');
        expect(
          (constRt7, dartRt7).match(1e-14),
          isTrue,
          reason: '$testVal2, $constRt7, $dartRt7',
        );
      }
    });
  });

  group('Powers and Exponents', () {
    test('ConstMath.exp()', () {
      for (int i = 0; i < 1000; ++i) {
        final testVal = i / 300;
        final constExp = ConstMath.exp(testVal);
        final dartExp = exp(testVal);
        expect((constExp, dartExp).match(5e-16), isTrue);
      }
      for (int i = 0; i < 1000; ++i) {
        final testVal2 = i - 500;
        final constExp = ConstMath.exp(testVal2);
        final dartExp = exp(testVal2);
        expect((constExp, dartExp).match(1e-15), isTrue);
      }
    });

    test('ConstMath.pow()', () {
      for (int a = 2; a < 30; ++a) {
        for (int b = 0; b < 20; ++b) {
          final testA = a - 0.5;
          final testB = b - 10;
          final constPow = ConstMath.pow(testA, testB);
          final dartPow = pow(testA, testB);
          expect((constPow, dartPow).match(1e-12), isTrue);
          //print('x = $testA, $testB,  $constPow,  $dartPow');
        }
      }
    });
  });

  group('Inverse Trigonal Functions', () {
    test('ConstMath.asin()', () {
      for (int i = 0; i < 1000; ++i) {
        final testVal = i / 500 - 1.0;
        final constAsin = ConstMath.asin(testVal);
        final dartAsin = asin(testVal);
        expect(
          (constAsin, dartAsin).diff(1e-14),
          isTrue,
          reason: '$testVal, $constAsin, $dartAsin',
        );
      }
    });
    test('ConstMath.acos()', () {
      for (int i = 0; i < 1000; ++i) {
        final testVal = i / 500 - 1.0;
        final constAcos = ConstMath.acos(testVal);
        final dartAcos = acos(testVal);
        expect(
          (constAcos, dartAcos).diff(1e-14),
          isTrue,
          reason: '$testVal, $constAcos, $dartAcos',
        );
      }
    });
    test('ConstMath.atan()', () {
      for (int i = 0; i < 1000; ++i) {
        final testVal = i / 300 - 1;
        final constAtan = ConstMath.atan(testVal);
        final dartAtan = atan(testVal);
        expect(
          (constAtan, dartAtan).diff(1e-6),
          isTrue,
          reason: '$testVal, $constAtan, $dartAtan',
        );
        //print('$testVal, $constAtan, $dartAtan');
      }
    });
    test('ConstMath.atan2()', () {
      for (num x = -6; x < 8; ++x) {
        for (int y = 0; y < 1000; ++y) {
          final testX = x;
          final testY = y / 300 - 0.189;
          final constAtan2 = ConstMath.atan2(testY, testX);
          //final newAtan = ConstMath.atanTest(testVal);
          final dartAtan2 = atan2(testY, testX);
          expect(
            (constAtan2, dartAtan2).diff(1e-6),
            isTrue,
            reason: '$testX, $testY, $constAtan2, $dartAtan2',
          );
        }
      }
    });
  });

  group('errorFunction', () {
    test('ConstMath.erf()', () {
      expect((ConstMath.erf(0), 0.0).diff(1e-6), true);
      expect(
        (const ConstMath.erf(1), 0.8427008).diff(1e-6),
        true,
        reason: '${ConstMath.erf(1)}',
      );
      expect(
        (const ConstMath.erf(2), 0.9953223).diff(1e-6),
        true,
        reason: '${ConstMath.erf(2)}',
      );
      expect(
        (const ConstMath.erf(-1), -0.8427008).diff(1e-6),
        true,
        reason: '${ConstMath.erf(-1)}',
      );
      expect(
        (const ConstMath.erf(20000), 1.0).diff(1e-6),
        true,
        reason: '${ConstMath.erf(-1)}',
      );
    });
    test('ConstMath.erfc()', () {
      expect((ConstMath.erfc(0), 1.0).diff(1e-5), true);
      expect(
        (const ConstMath.erfc(1), 0.1572992).diff(1e-5),
        true,
        reason: '${ConstMath.erfc(1)},0.1572992',
      );
      expect(
        (const ConstMath.erfc(2), 0.004677735).diff(1e-5),
        true,
        reason: '${ConstMath.erfc(2)}, 0.004677735',
      );
      expect(
        (const ConstMath.erfc(-1), 1.8427008).diff(1e-5),
        true,
        reason: '${ConstMath.erfc(-1)}, 1.8427008',
      );
      expect(
        (const ConstMath.erfc(20000), 0.0).diff(1e-5),
        true,
        reason:
            '${ConstMath.erfc(20000)},0.0, exp(-4000000000) = ${ConstMath.exp(-4000000000)}',
      );
    });
  });

  group('hyperbolic trigonal fuctions', () {
    test('ConstMath.sinh()', () {
      for (int i = 0; i < 100; ++i) {
        final testVal = (i - 50) / 5;
        final constSinh = ConstMath.sinh(testVal);
        final dartSinh = (exp(testVal) - exp(-testVal)) / 2;
        expect(
          (constSinh, dartSinh).match(1e-14),
          isTrue,
          reason: '$testVal, $constSinh, $dartSinh',
        );
      }
    });

    test('ConstMath.cosh()', () {
      for (int i = 0; i < 100; ++i) {
        final testVal = (i - 50) / 5;
        final constCosh = ConstMath.cosh(testVal);
        final dartCosh = (exp(testVal) + exp(-testVal)) / 2;
        expect(
          (constCosh, dartCosh).match(1e-14),
          isTrue,
          reason: '$testVal, $constCosh, $dartCosh',
        );
      }
    });

    test('ConstMath.tanh()', () {
      for (int i = 0; i < 100; ++i) {
        final testVal = (i - 50) / 5;
        final constTanh = ConstMath.tanh(testVal);
        final dartTanh = ((exp(2 * testVal) - 1) / (exp(2 * testVal) + 1));

        expect(
          (constTanh, dartTanh).match(1e-14),
          isTrue,
          reason: '$testVal, $constTanh, $dartTanh',
        );

        //print('$testVal, $constTanh, $dartTanh');
      }
    });
  });
}



//For testing new algorithm
/* 
extension on (num, num, num) {
  bool better() => ($2 - $3).abs() <= ($1 - $3).abs();
}
*/

