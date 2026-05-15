part of "const_math_base.dart";

const pi = pi1;

const e = e1;

///Return absolute value, always return double.
extension type abs._(double _v)implements double, ConstMath{
  ///Return absolute value, always return double.
  const abs(num d):_v = d >= 0 ? d * 1.0 : -d * 1.0;
}

///Compare and return minimum value for up to 10 values, returns double.
extension type min._(double _v)implements double, ConstMath{
  ///Compare and return minimum value for up to 10 values, returns double.
  const min(num a, num b, [num c = double.infinity, num d = double.infinity, num e = double.infinity, num f = double.infinity, num g = double.infinity, num h = double.infinity, num i = double.infinity, num j = double.infinity])
    : _v =
          (a <= b && a <= c && a <= d && a <= e && a <= f && a <= g && a <= h && a <= i && a <= j)
              ? a * 1.0
              : (b <= c && b <= d && b <= e && b <= f && b <= g && b <= h && b <= i && b <= j)
              ? b * 1.0
              : (c <= d && c <= e && c <= f && c <= g && c <= h && c <= i && c <= j)
              ? c * 1.0
              : (d <= e && d <= f && d <= g && d <= h && d <= i && d <= j)
              ? d * 1.0
              : (e <= f && e <= g && e <= h && e <= i && e <= j)
              ? e * 1.0
              : (f <= g && f <= h && f <= i && f <= j)
              ? f * 1.0
              : (g <= h && g <= i && g <= j)
              ? g * 1.0
              : (h <= i && h <= j)
              ? h * 1.0
              : (i <= j)
              ? i * 1.0
              : j * 1.0;
}

///Compare and return maximum value for up to 10 values, returns double.
extension type max._(double _v)implements double, ConstMath{
  ///Compare and return maximum value for up to 10 values, returns double.
  const max(num a, num b, [num c = double.negativeInfinity, num d = double.negativeInfinity, num e = double.negativeInfinity, num f = double.negativeInfinity, num g = double.negativeInfinity, num h = double.negativeInfinity, num i = double.negativeInfinity, num j = double.negativeInfinity])
    : _v =
          (a >= b && a >= c && a >= d && a >= e && a >= f && a >= g && a >= h && a >= i && a >= j)
              ? a * 1.0
              : (b >= c && b >= d && b >= e && b >= f && b >= g && b >= h && b >= i && b >= j)
              ? b * 1.0
              : (c >= d && c >= e && c >= f && c >= g && c >= h && c >= i && c >= j)
              ? c * 1.0
              : (d >= e && d >= f && d >= g && d >= h && d >= i && d >= j)
              ? d * 1.0
              : (e >= f && e >= g && e >= h && e >= i && e >= j)
              ? e * 1.0
              : (f >= g && f >= h && f >= i && f >= j)
              ? f * 1.0
              : (g >= h && g >= i && g >= j)
              ? g * 1.0
              : (h >= i && h >= j)
              ? h * 1.0
              : (i >= j)
              ? i * 1.0
              : j * 1.0;
}

///Return signum(d), in double.
extension type sgn._(double _v)implements double, ConstMath{
  ///Return signum(d), in double.
  const sgn(num d)
    : _v =
          d > 0.0
              ? 1.0
              : d < 0.0
              ? -1.0
              : 0.0;
}

///Change degree to radian.
extension type degToRad._(double _v)implements double, ConstMath{
  ///Change degree to radian.
  const degToRad(num d) : _v = d / 180 * pi1;
}

///Change radian to degree.
extension type radToDeg._(double _v)implements double, ConstMath{
  ///Change radian to degree.
  const radToDeg(num d) : _v = d / pi1 * 180;
}