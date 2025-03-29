<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages). 
-->

This package includes several "`const`able math functions" that can be called at compile-time which `dart:math` mostly cannot, returning `const double`, and can be used as compile-time constant. 

They are `const` constructors of extension type on `double` implements `double`, therefore can be used just like normal double, with almost 0 cost.

It is not and will not be optimized for run-time, if need a run time calculation, condider using 'dart:math' or other libraries.

## Features

Constants

 - ConstMath.pi()
 - ConstMath.e()

Basic functions

 - ConstMath.abs(num d)
 - ConstMath.sgn(num d)
 - ConstMath.min(num a, num b, \[num c, num d, num e, num f, num g, num h, num i, num j\])
 - ConstMath.max(num a, num b, \[num c, num d, num e, num f, num g, num h, num i, num j\])
 - ConstMath.degToRad(num d)
 - ConstMath.radToDeg(num d)

Trigonometric functions
 - ConstMath.sin(num d)
 - ConstMath.cos(num d) 
 - ConstMath.tan(num d)
 - ConstMath.cot(num d)
 - ConstMath.sec(num d)
 - ConstMath.csc(num d)

Log functions

 - ConstMath.log(num d)
 - ConstMath.log2(num d)
 - ConstMath.log10(num d)

Exponent functions

 - ConstMath.exp(num d)
 - ConstMath.pow(num a, num b)

Inverse trigonometric functions

 - ConstMath.asin(num d)
 - ConstMath.acos(num d)
 - ConstMath.atan(num d)
 - ConstMath.atan2(num y, num x)

Root functions

 - ConstMath.sqrt(num d)
 - ConstMath.cbrt(num d)
 - ConstMath.rt5(num d)
 - ConstMath.rt7(num d)

Hyperbolic trigonometric funcions

 - ConstMath.sinh(num d)
 - ConstMath.cosh(num d)
 - ConstMath.tanh(num d)
 - ConstMath.coth(num d)
 - ConstMath.sech(num d)
 - ConstMath.coth(num d)

Error functions

 - ConstMath.erf(num d)
 - ConstMath.erfc(num d)

## Getting started

In `pubspec.yaml`, add

```yaml
dependencies:
  const_math: ^1.0.2
```

and run the pub get. In the place you wish to use these functions, 

```dart
import 'package:const_math/const_math.dart';
```

## Usage

These are compile time math functions that dart math does not provide, implemented by extension type on `double`.

```dart
const mySinValue = ConstMath.sin(3);
```
If you think the name of extension type `ConstMath` is too wordy, you can do something like this.

```dart
typedef CM = ConstMath;
const seventhRoot2 = CM.rt7(2);
```

These values can also be passed as argument to other const constructors, or to another ConstMath function. 

```dart
const sinOfSin1 = CM.sin(CM.sin(1));
```

## Additional information

If need support or to report bugs,
email: const_math_support@worldoverwrite.com