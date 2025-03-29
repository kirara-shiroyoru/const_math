///This is a package that mimic compi1le-time static math functions by
///applying extension type on double.
///Not optimized for runtime usage, and should be use only for const _values.
///If you want a run-time calculation, pls implement dart math instead.
library;

import 'constants.dart';

//const String version='0.0.1';


extension type const ConstMath._(double _value) implements double {


  //----------------------------------------------------------------------------
  //  public api goes here, these are actual functions that users can invoke
  //----------------------------------------------------------------------------
  
  ///returns pi constant
  const ConstMath.pi():_value=pi1;

  ///return e constant
  const ConstMath.e():_value=e1;

  const ConstMath.degToRad(num d):_value=d/180*pi1;

  const ConstMath.radToDeg(num d):_value=d/pi1*180;

  ///Return absolute value, always return double.
  const ConstMath.abs(num d):_value=d>=0?d*1.0 :-d*1.0;

  ///Return signum(d), in double.
  const ConstMath.sgn(num d):_value=d>0.0?1.0:d<0.0?-1.0:0.0;

  ///Compare and return minimum value for up to 10 values, returns double.
  const ConstMath.min(
    num a,
    num b, [
    num c=double.infinity,
    num d=double.infinity,
    num e=double.infinity,
    num f=double.infinity,
    num g=double.infinity,
    num h=double.infinity,
    num i=double.infinity,
    num j=double.infinity,
  ]):_value =
    (a<=b&&a<=c&&a<=d&&a<=e&&a<=f&&a<=g&&a<=h&&a<=i&&a<=j)? a*1.0: 
    (b<=c&&b<=d&&b<=e&&b<=f&&b<=g&&b<=h&&b<=i&&b<=j)?b*1.0: 
    (c<=d&&c<=e&&c<=f&&c<=g&&c<=h&&c<=i&&c<=j)?c*1.0: 
    (d<=e&&d<=f&&d<=g&&d<=h&&d<=i&&d<=j)?d*1.0: 
    (e<=f&&e<=g&&e<=h&&e<=i&&e<=j)? e*1.0: 
    (f<=g&&f<=h&&f<=i&&f<=j)?f*1.0: 
    (g<=h&&g<=i&&g<=j)?g*1.0: (h<=i&&h<=j)?h*1.0: 
    (i<=j)?i*1.0:j*1.0;

  ///Compare and return maximum value for up to 10 values, returns double.
  const ConstMath.max(
    num a,
    num b, [
    num c=double.negativeInfinity,
    num d=double.negativeInfinity,
    num e=double.negativeInfinity,
    num f=double.negativeInfinity,
    num g=double.negativeInfinity,
    num h=double.negativeInfinity,
    num i=double.negativeInfinity,
    num j=double.negativeInfinity,
  ]):_value =
    (a>=b&&a>=c&&a>=d&&a>=e&&a>=f&&a>=g&&a>=h&&a>=i&&a>=j)?a*1.0: 
    (b>=c&&b>=d&&b>=e&&b>=f&&b>=g&&b>=h&&b>=i&&b>=j)?b*1.0: 
    (c>=d&&c>=e&&c>=f&&c>=g&&c>=h&&c>=i&&c>=j)?c*1.0: 
    (d>=e&&d>=f&&d>=g&&d>=h&&d>=i&&d>=j)?d*1.0: 
    (e>=f&&e>=g&&e>=h&&e>=i&&e>=j)?e*1.0: 
    (f>=g&&f>=h&&f>=i&&f>=j)?f*1.0: 
    (g>=h&&g>=i&&g>=j)?g*1.0: (h>=i&&h>=j)? h*1.0: 
    (i>=j)? i*1.0: j*1.0;

  ///Calculate sine value in radius.
  const ConstMath.sin(num d):this._sin(d*1.0);

  ///Calculate cosine value in radius.
  const ConstMath.cos(num d):this._cos(d*1.0);

  ///Calculate tangent value in radius.
  const ConstMath.tan(num d):
    this._tan(d*1.0);

  ///Calculate cotangent value in radius.
  const ConstMath.cot(num d):this._tan(d*1.0, transformEnum: transformReciprocal);

  ///Calculate secant value in radius.
  const ConstMath.sec(num d):this._cos(d*1.0, transformEnum: transformReciprocal);

  ///Calculate cosecant value in radius.
  const ConstMath.csc(num d):this._sin(d*1.0, transformEnum:transformReciprocal);

  ///Calculate arcsine value.
  const ConstMath.asin(num d):   
    this._asin(d*1.0);

  ///Calculate arccosine value.
  const ConstMath.acos(num d):
    this._asin(d*1.0, shift:halfPi, multiplier: -1.0);

  ///Calculate arctangent value, usable but not that accurate.
  const ConstMath.atan(num d):this.atan2(d, 1.0);

  ///Mimic atan2 function, usable but not that accurate.
  const ConstMath.atan2(num y, num x):
    this._atan2(y*1.0,x*1.0);

  ///Calculate natural log value.
  const ConstMath.log(num d):
    this._log(d*1.0);

  ///Calculate 2-based log value.
  const ConstMath.log2(num d):
    this._log(d*1.0, multiplier: antiLn2);

  ///Calculate 10-based log value.
  const ConstMath.log10(num d):
    this._log(d*1.0, multiplier: antiLn10);

  ///Calculate exponent value.
  const ConstMath.exp(num d):
    this._exp(d*1.0);

  ///Calculate a^b.
  const ConstMath.pow(num a, num b):
    this._pow(a*1.0, b*1.0);  

  ///Calculate square root with high accuracy.
  const ConstMath.sqrt(num d):this._sqrt(d*1.0);

  ///Calculate cubic root with high accuracy.
  const ConstMath.cbrt(num d):
    this._cbrt(d*1.0);

  ///Calculate 5th root with high accuracy.
  const ConstMath.rt5(num d):
    this._rt5(d*1.0);

  ///Calculate 7th root with high accuracy.
  const ConstMath.rt7(num d):
    this._rt7(d*1.0);

  ///calculate hyperbolic sine of d.
  const ConstMath.sinh(num d):
    this._sinh(d*1.0);

  ///calculate hyperbolic cosine of d.
  const ConstMath.cosh(num d):
    this._cosh(d*1.0);

  ///calculate hyperbolic tangent of d.
  const ConstMath.tanh(num d):
    this._tanh(d*1.0);

  ///calculate hyperbolic cotangent of d.
  const ConstMath.coth(num d):
    this._tanh(d*1.0, transformEnum: transformReciprocal);

  ///calculate hyperbolic secant of d.
  const ConstMath.sech(num d):
    this._cosh(d*1.0, transformEnum: transformReciprocal);

  ///calculate hyperbolic cosecant of d.
  const ConstMath.csch(num d):
    this._sinh(d*1.0, transformEnum: transformReciprocal);
  
  ///calculate error function
  const ConstMath.erf(num d):
    this._erf(d*1.0);

  ///calculate complementory error function
  const ConstMath.erfc(num d):
    this._erfc(d*1.0);

  //----------------------------------------------------------------------------
  // Interface api goes here, these are logics that I can use, or if anyone 
  // needs to develop custom function that I haven't provided.
  //----------------------------------------------------------------------------
  
  ///Basic transformation that can be applied after calculating.
  ///
  ///[transformEnum],[multiplier], [shift] are applied in the order of
  ///tangentReduction => multiplier => negate => averageWithReciprocal 
  ///=>averageWithNegativeReciprocal => sub1OverSum1 => 
  ///reciprocal => shift => assertFailed 
  const ConstMath._transform(double d, double multiplier, int transformEnum, double shift, String assertText):
    this._transformBase(d,multiplier, transformEnum, shift, assertText);

  const ConstMath._sin(double d, {double multiplier=1.0, double shift=0.0, TransformEnum transformEnum=transformNone,String assertText=defaultAssertText}):
    this._sinMap0(d % pi2, multiplier, shift, transformEnum,assertText);

  const ConstMath._cos(double d, {double multiplier = 1.0, double shift = 0.0, TransformEnum transformEnum = transformNone, String assertText = defaultAssertText}):
    this._cosMap0(d%pi2, multiplier, shift, transformEnum,assertText);

  const ConstMath._tan(double d, {double multiplier =1.0, double shift=0.0, String assertText = defaultAssertText, TransformEnum transformEnum = transformNone}):
    this._tanMap0((d+halfPi) % pi1- halfPi,(d+halfPi/2) % pi1> halfPi,multiplier,shift, transformEnum, assertText);

  const ConstMath._asin(double d, {double shift=0.0, int transformEnum=transformNone, double multiplier=1.0, String assertText=defaultAssertText}):
    this.__asinBase(d, d*d, shift, transformEnum, multiplier, assertText);

  ///only transformNone or transformAssertFailed allowed for [transformEnum]
  const ConstMath._atan2(double y, double x, {double multiplier = 1.0, double shift = 0.0, TransformEnum transformEnum = transformNone, String assertText = defaultAssertText}):
    this._atan2Map0(y,x, multiplier, shift, transformEnum, assertText);

  ///calculate natural log(x)
  const ConstMath._log(double d, {double multiplier = 1.0, double shift=0.0, TransformEnum transformEnum = transformNone, String assertText=defaultAssertText}):
    this._pow(d,1.0,transformEnum:transformEnum|transformIgnoreExp, multiplier: multiplier, shift: shift,assertText: assertText);

  ///calculate natural exp(x)
  const ConstMath._exp(double d,{double multiplier=1.0, double shift=0.0,TransformEnum transformEnum=transformNone, String assertText=defaultAssertText}):
    this._expApprox1(d>=0?d :-d,d>=0?multiplier:1/multiplier, shift, transformEnum^(d<0?transformReciprocal:transformNone), assertText);
  
  ///only for non negative a, and a and b cannot both be 0
  const ConstMath._pow(double a, double b,{double multiplier=1.0, double shift=0.0, TransformEnum transformEnum=transformNone, String assertText=defaultAssertText}):
    this._logApprox1((a<1&&a>0)?1/a:a,b,a < 1.0,multiplier,shift,
      transformEnum^(a<0||(a==0&&b==0)?transformAssertFailed:transformNone),
      '$assertText${a<0?'negative value $a is not supported in _pow()':(a==0&&b==0)?'a and b cannot both be 0 in _pow()':''}');

  const ConstMath._sqrt(double d, {double multiplier = 1.0, double shift = 0.0, TransformEnum transformEnum = transformNone, String assertText = defaultAssertText}):
    this._sqrtApprox1(d < 1&&d > 0? 1/d: d, d < 1&&d > 0? 1/multiplier:multiplier, shift, transformEnum^(d < 1&&d > 0?transformReciprocal:transformNone)|(d<0.0?transformAssertFailed:transformNone),'$assertText${d < 0?', _sqrt ($d) is not allowed':''}');

  const ConstMath._cbrt(double d, {double multiplier = 1.0, double shift = 0.0, TransformEnum transformEnum = transformNone, String assertText = defaultAssertText}):
    this._cbrtApprox1(d<-1.0?-d:d<0?-1/d:d>1.0?d:d>0.0?1/d:0.0,d<=-1.0?-multiplier:d<0?-1/multiplier:d<1?1/multiplier:multiplier,shift,
      transformEnum^(d < 1&&d >-1&&d != 0?transformReciprocal:transformNone)
      ,assertText);

  const ConstMath._rt5(double d, {double multiplier = 1.0, double shift = 0.0, TransformEnum transformEnum = transformNone, String assertText = defaultAssertText}):
    this._rt5Approx1(d<-1.0?-d:d<0?-1/d:d>1.0?d:d>0.0?1/d:0.0,d<=-1.0?-multiplier:d<0?-1/multiplier:d<1?1/multiplier:multiplier,shift,
      transformEnum^(d < 1&&d >-1&&d != 0?transformReciprocal:transformNone)
      ,assertText);

  const ConstMath._rt7(double d, {double multiplier = 1.0, double shift = 0.0, TransformEnum transformEnum = transformNone, String assertText = defaultAssertText}):
    this._rt7Approx1(d<-1.0?-d:d<0?-1/d:d>1.0?d:d>0.0?1/d:0.0,d<=-1.0?-multiplier:d<0?-1/multiplier:d<1?1/multiplier:multiplier,shift,
      transformEnum^(d < 1&&d >-1&&d != 0?transformReciprocal:transformNone)
      ,assertText);

  const ConstMath._erfc(double d, {double multiplier=1.0, double shift = 0.0, TransformEnum transformEnum = transformNone, String assertText=defaultAssertText}):
    this._erfcBase(d>=0?d:-d,d<0?-1/multiplier:1/multiplier,shift+(d>=0?0.0:2.0*multiplier),
      transformEnum|(d<0&&(transformEnum&~transformAssertFailed!=0)?transformAssertFailed:transformNone)
      ^transformReciprocal,
      '$assertText${(transformEnum&~transformAssertFailed!=0)?'transform is not allowed for _erfc($d)':''}'
    );

  const ConstMath._erf(double d, {double multiplier=1.0, double shift = 0.0, TransformEnum transformEnum = transformNone, String assertText=defaultAssertText}):
    this._erfcBase(d>=0?d:-d,d>=0?-1/multiplier:1/multiplier,shift+(d>=0?multiplier :-multiplier),
      transformEnum|(d<0&&(transformEnum&~transformAssertFailed!=0)?transformAssertFailed:transformNone)
      ^transformReciprocal,
      '$assertText${d<0&&(transformEnum&~transformAssertFailed!=0)?'transform or is not allowed for _erfc($d)':''}'
    );

  const ConstMath._sinh(double d, {double shift = 0.0, TransformEnum transformEnum = transformNone, String assertText=defaultAssertText}):
    this._exp(d>=0?d:-d, multiplier:d>=0?1.0:-1.0,shift: shift,transformEnum: transformEnum^transformAverageWithNegativeReciprocal,assertText: assertText);

  const ConstMath._cosh(double d, {double shift = 0.0, TransformEnum transformEnum = transformNone, String assertText=defaultAssertText}):
    this._exp(d>=0?d:-d, multiplier:1.0,shift: shift,transformEnum: transformEnum^transformAverageWithReciprocal,assertText: assertText);

  const ConstMath._tanh(double d, {double shift = 0.0, TransformEnum transformEnum = transformNone, String assertText=defaultAssertText}):
    this._exp(d>=0?2.0*d:-2.0*d, multiplier:d>=0?1.0:-1.0,shift: shift,transformEnum: transformEnum^transformTanh,assertText: assertText);

  ///calculate pade approximation
  const ConstMath._pade(
    double d, {
    required double a0, double a1=0.0, double a2=0.0, double a3=0.0,
    double a4=0.0, double a5=0.0, double a6=0.0, double a7=0.0,
    double a8=0.0, double a9=0.0, double a10=0.0, required double b0, 
    double b1=0.0, double b2=0.0, double b3=0.0, double b4=0.0,
    double b5=0.0, double b6=0.0, double b7=0.0, double b8=0.0,
    double b9=0.0, double b10=0.0, multiplier=1.0,
    TransformEnum transformEnum = transformNone,
    assertFailed=false,
    reciprocal=false,
    bool tangentReduction=false,
    negate=false,
    shift=0.0,
    assertText=defaultAssertText,
  }):this._padeBase(
      d,d*d,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,
      multiplier: multiplier,
      assertText: assertText,
      shift: shift,
      transformEnum: transformEnum,
    );

  ///calculate polynomials, mostly for taylor series
  const ConstMath._polynomial( double d, {
    double c0=0.0, double c1=0.0, double c2=0.0, double c3=0.0,
    double c4=0.0, double c5=0.0, double c6=0.0, double c7=0.0,
    double c8=0.0, double c9=0.0, double c10=0.0, double multiplier=1.0,
    String assertText=defaultAssertText, double shift=0.0,
    TransformEnum transformEnum=transformNone,
  }):this._transform((((((((((c10*d+c9)*d+c8)*d+c7)*d+c6)*d+c5)*d+c4)*d+c3)*d+c2)*d+c1)*d+c0,
      multiplier,transformEnum,shift,assertText);

  //----------------------------------------------------------------------------
  // Here are all the dirty logics, unless you want to go deeper, i.e. you 
  // think they are not accurate enough and want to adjust the algorithm, 
  // JUST IGNORE THEM. I know they somehow looks awful, but this is what code 
  // would look like if loops and functions do not exists.
  //
  // Redirecting constructors are one way path, and are not allowed to redirect 
  // to themselves directly or indirectly, therefore code reusability is low
  // and creates LOTS OF REPEATED CODE.
  //
  // Redirecting const constructors can only redirect to ONE const constructor,
  // to avoid EVEN MORE REPEATED CODE, there may be some UNNECCESARY REDIRECTING. 
  // This tipically DOES NOT AFFECT ACCURACY, but MAY AFFECT RUN-TIME EFFICIENCY.
  // After all, this package IS NOT DESIGNED FOR RUN-TIME. If you need run-time 
  // value, strongly reccomand IMPLEMENT 'dart:math' or other libraries instead. 
  //----------------------------------------------------------------------------

  ///logics of ConstMath._transform
  const ConstMath._transformBase(double d, double multiplier, int transformEnum, double shift, String assertText):
    this._tangentReduction(d,multiplier, transformEnum, shift, assertText);
  const ConstMath._tangentReduction(double d,double multiplier, int transformEnum, double shift, String assertText):
    this._multiply(transformEnum&transformTangentReduction == 0? d: 2*d/(1.0- d*d), multiplier,transformEnum,shift, assertText);
  const ConstMath._multiply(double d, double multiplier, int transformEnum, double shift, String assertText):
    this._averageWithReciprocal(d*multiplier, multiplier, transformEnum, shift, assertText);
  const ConstMath._averageWithReciprocal(double d,double multiplier, int transformEnum, double shift, String assertText):
    this._averageWithNegativeReciprocal(transformEnum&transformAverageWithReciprocal == 0? d: (d+1/d)/2,multiplier,transformEnum,shift, assertText);
  const ConstMath._averageWithNegativeReciprocal(double d,double multiplier, int transformEnum, double shift, String assertText):
    this._sub1OverSum1(transformEnum&transformAverageWithNegativeReciprocal == 0? d: (d-1/d)/2,multiplier,transformEnum,shift, assertText);
  const ConstMath._sub1OverSum1(double d,double multiplier, int transformEnum, double shift, String assertText):
    this._reciprocal(transformEnum&transformTanh == 0? d:  d>=0?(d-1)/(d+1):(d+1)/(1-d),multiplier,transformEnum,shift, assertText);
  const ConstMath._reciprocal(double d,  double multiplier,int transformEnum, double shift, String assertText):
    this._shift(transformEnum&transformReciprocal == 0? d: 1/d, transformEnum,shift, assertText);
  const ConstMath._shift(double d, int transformEnum, double shift, String assertText):
    this._assertFailed(d+shift, transformEnum, assertText);
  const ConstMath._assertFailed(double d, int transformEnum, String assertText):
    _value=d, assert(transformEnum&transformAssertFailed == 0, assertText);
  ///logic of pade approximation, nothing special
  const ConstMath._padeBase(
    double d, double d2,
    double a0, double a1, double a2, double a3, double a4, double a5,
    double a6, double a7, double a8, double a9, double a10,
    double b0, double b1, double b2, double b3, double b4, double b5,
    double b6, double b7, double b8, double b9, double b10, {
    multiplier=1.0,
    assertFailed=false,
    reciprocal=false,
    bool tangentReduction=false,
    negate=false,
    required double shift,
    required String assertText,
    required TransformEnum transformEnum
  }):this._transform(
    ((((((((((a10*d2+a9)*d2+a8)*d2+a7)*d2+a6)*d2+a5)*d2+a4)*d2+a3)*d2+a2)*d2+a1)*d2+a0)*d 
    /((((((((((b10*d2+b9)*d2+b8)*d2+b7)*d2+b6)*d2+b5)*d2+b4)*d2+b3)*d2+b2)*d2+b1)*d2+b0),
    multiplier, transformEnum, shift, assertText); 

  ///angle transfer logic for sin
  const ConstMath._sinMap0(double d , double multiplier, double shift,TransformEnum transformEnum,String assertText):
    this._sinMap1(d % pi1,d > pi1? -multiplier:multiplier, shift, transformEnum, assertText);
  const ConstMath._sinMap1(double d, double multiplier, double shift,TransformEnum transformEnum,String assertText): 
    this._sinMap2(d > halfPi?pi1- d:d, multiplier, shift, transformEnum, assertText);
  const ConstMath._sinMap2(double d, double multiplier,double shift, TransformEnum  transformEnum,String assertText): 
    this._sinBase(d > quarterPi?halfPi- d:d, d<=quarterPi,multiplier, shift, transformEnum, assertText);
  ///angle transfer logic for cos
  const ConstMath._cosMap0(double d, double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._cosMap1(d > pi1?pi2- d:d, multiplier, shift, transformEnum, assertText);
  const ConstMath._cosMap1(double d, double multiplier, double shift, TransformEnum transformEnum, String assertText):
   this._cosMap2(d > halfPi?pi1- d:d, d > halfPi?-multiplier:multiplier, shift, transformEnum,assertText);
  const ConstMath._cosMap2(double d, double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sinBase(d > quarterPi?halfPi- d:d,d > quarterPi,multiplier,shift,transformEnum,assertText);
  ///value calculate logic for sin using taylor seiries
  const ConstMath._sinBase(double d, bool useSin, double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._polynomial(
      d*d,
      c0: useSin?s0:c0,c1: useSin?s1:c1,c2: useSin?s2:c2,c3: useSin?s3:c3,c4: useSin?s4:c4,c5: useSin?s5:c5,
      c6: useSin?s6:c6,c7: useSin?s7:c7,c8: useSin?s8:c8,c9: useSin?s9:c9,c10: useSin?s10:c10,
      multiplier: useSin?d*multiplier:multiplier,transformEnum: transformEnum, assertText: assertText, shift: shift
    );  
  

  ///tangent range transforming logic, requires transformTangentReduction not to be applied. 
  const ConstMath._tanMap0(double d, bool shouldReduce, double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._tanBase(shouldReduce?d/2:d,multiplier,shift,transformEnum|( shouldReduce?transformTangentReduction:transformNone)
      |(shouldReduce && ( transformEnum&transformTangentReduction != 0)? transformAssertFailed : transformNone),
      shouldReduce && (transformEnum&transformTangentReduction != 0)?'$assertText, transformTangentReduction resued, I don\'t understand why you would use this enum' :assertText );
  ///calculation method: by applying taylor series of both sin and cos, this converge better than taylor series of tan itself
  const ConstMath._tanBase(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._pade(d,
      a0: s0,a1: s1,a2: s2,a3: s3,a4: s4,a5: s5,
      a6: s6,a7: s7,a8: s8,a9: s9,a10: s10,b0:c0,
      b1: c1,b2: c2,b3: c3,b4: c4,b5: c5,b6: c6,
      b7: c7,b8: c8,b9: c9,b10: c10,
      transformEnum: transformEnum,
      assertText: assertText,
      multiplier: multiplier,
      shift: shift
    );

  //logic approximates natural log of a by reducing the range to [1,sqrt(2)] and approach by taylor series
  const ConstMath._logApprox1(double a, double b, bool negate,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._logApprox2(a > p10?a/p10:a, b, a > p10?512.0:0, negate,multiplier,shift,transformEnum,assertText);
  const ConstMath._logApprox2(double a, double b, double trailer, bool negate,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._logApprox3(a > p9?a/p9:a, b, a > p9?256.0:0, negate,multiplier,shift,transformEnum,assertText);
  const ConstMath._logApprox3(double a, double b, double trailer, bool negate,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._logApprox4(a > p8?a/p8:a,b,a > p8?trailer+128.0:trailer,negate,multiplier,shift,transformEnum,assertText);
  const ConstMath._logApprox4(double a, double b, double trailer, bool negate,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._logApprox5(a > p7?a/p7:a,b,a > p7?trailer+64.0:trailer,negate,multiplier,shift,transformEnum,assertText );
  const ConstMath._logApprox5(double a, double b, double trailer, bool negate,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._logApprox6(a > p6?a/p6:a,b,a > p6?trailer+32.0:trailer,negate,multiplier,shift,transformEnum,assertText );
  const ConstMath._logApprox6(double a, double b, double trailer, bool negate,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._logApprox7(a > p5?a/p5:a,b,a > p5?trailer+16.0:trailer,negate,multiplier,shift,transformEnum,assertText );
  const ConstMath._logApprox7(double a, double b, double trailer, bool negate,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._logApprox8(a > p4?a/p4:a,b,a > p4?trailer+8.0:trailer,negate,multiplier,shift,transformEnum,assertText );
  const ConstMath._logApprox8(double a, double b, double trailer, bool negate,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._logApprox9(a > p3?a/p3:a,b,a > p3?trailer+4.0:trailer,negate,multiplier,shift,transformEnum,assertText );
  const ConstMath._logApprox9(double a, double b, double trailer, bool negate,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._logApprox10(a > p2?a/p2:a,b,a > p2?trailer+2.0:trailer,negate,multiplier,shift,transformEnum,assertText );
  const ConstMath._logApprox10(double a, double b, double trailer, bool negate,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._logApprox11(a > p1?a/p1:a,b,a > p1?trailer+1.0:trailer,negate,multiplier,shift,transformEnum,assertText );
  const ConstMath._logApprox11(double a, double b, double trailer, bool negate,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._aBase(a > p0?a/p0:a,b,a > p0?trailer+0.5:trailer,negate,multiplier,shift,transformEnum,assertText );
  const ConstMath._aBase(double a, double b, double trailer, bool negate,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this.__aBase((a- 1)/(a+1),(a- 1)*(a- 1)/(a+1)/(a+1),b,trailer,negate,multiplier,shift,transformEnum,assertText );
  const ConstMath.__aBase(double d,double d2, double b, double trailer, bool negate, double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._logExpTransister(
      (((((((((((d2/21+1/19)*d2+1/17)*d2+1/15)*d2+1/13)*d2+1/11)*d2+1/9)*
      d2+1/7)*d2+1/5)*d2+1/3)*d2+1)*d*2+trailer*ln2)*(negate ?-b:b),
      multiplier,shift,transformEnum,assertText
    );
  const ConstMath._logExpTransister(double d, double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._exp(
      transformEnum&transformIgnoreExp == 0? d:0,
      multiplier: multiplier*(transformEnum&transformIgnoreExp == 0? 1.0:d),
      shift: shift,transformEnum: transformEnum,assertText: assertText
    );

  ///reduce x to convergeable range and approximates with taylor series
  const ConstMath._expApprox1(double d, double multiplier, double shift,TransformEnum transformEnum,String assertText):
    this._expApprox2(d>=512?d-512:d,multiplier*(d>=512?e512:1),shift,transformEnum,assertText);
  const ConstMath._expApprox2(double d, double multiplier, double shift,TransformEnum transformEnum,String assertText):
    this._expApprox3(d>=256?d-256:d,multiplier*(d>=256?e256:1),shift,transformEnum,assertText);
  const ConstMath._expApprox3(double d, double multiplier, double shift,TransformEnum transformEnum,String assertText):
    this._expApprox4(d>=128?d-128:d,multiplier*(d>=128?e128:1),shift,transformEnum,assertText);
  const ConstMath._expApprox4(double d, double multiplier, double shift,TransformEnum transformEnum,String assertText):
    this._expApprox5(d>=64?d-64:d,multiplier*(d>=64?e64:1),shift,transformEnum,assertText);
  const ConstMath._expApprox5(double d, double multiplier, double shift,TransformEnum transformEnum,String assertText):
    this._expApprox6(d>=32?d- 32:d,multiplier*(d>=32?e32:1),shift,transformEnum,assertText);
  const ConstMath._expApprox6(double d, double multiplier, double shift,TransformEnum transformEnum,String assertText):
    this._expApprox7(d>=16?d- 16:d,multiplier*(d>=16?e16:1),shift,transformEnum,assertText);
  const ConstMath._expApprox7(double d, double multiplier, double shift,TransformEnum transformEnum,String assertText):
    this._expApprox8(d>=8?d- 8:d,multiplier*(d>=8?e8:1),shift,transformEnum,assertText);
  const ConstMath._expApprox8(double d, double multiplier, double shift,TransformEnum transformEnum,String assertText):
    this._expApprox9(d>=4?d- 4:d,multiplier*(d>=4?e4:1),shift,transformEnum,assertText);
  const ConstMath._expApprox9(double d, double multiplier, double shift,TransformEnum transformEnum,String assertText):
    this._expApprox10(d>=2?d- 2:d,multiplier*(d>=2?e2:1),shift,transformEnum,assertText);
  const ConstMath._expApprox10(double d, double multiplier, double shift,TransformEnum transformEnum,String assertText):
    this._expBase(d>=1?d- 1:d,multiplier*(d>=1?e1:1),shift,transformEnum,assertText);
  const ConstMath._expBase(double d, double multiplier, double shift,TransformEnum transformEnum,String assertText):
    this._transform(
      ((((((((((((((((((((d*n21+n20)*d+n19)*d+n18)*d+n17)*d+n16)*d+n15)*d+n14)*d+n13)*
      d+n12)*d+n11)*d+n10)*d+n9)*d+n8)*d+n7)*d+n6)*d+n5)*d+n4)*d+n3)*d+n2)*d+n1)*d+n0,
      multiplier,transformEnum,shift,assertText
    );


  ///_asin logic, use taylor series and constant values for initial approximation,
  /// and iterates 10 times using Newton's method.
  const ConstMath.__asinBase(double d, double d2, double shift, int transformEnum, double multiplier, String assertText): 
    this._asinIter0_1(
      d<=0.98&&d>=-0.98?((((((((((a10*d2+a9)*d2+a8)*d2+a7)*d2+a6)*d2+a5)*d2+a4)*d2+a3)*d2+a2)*d2+a1)*d2+a0)*d: 
        d > 0.0?1.0 :-1.0,
      d, shift, transformEnum, multiplier, assertText
    );
  const ConstMath._asinIter0_1(double d,double origin,double shift,int transformEnum, double multiplier, String assertText) :
     this._asinIter0_2(d, d*d, origin, shift, transformEnum, multiplier, assertText);
  const ConstMath._asinIter0_2(double d, double d2,double origin, double shift, int transformEnum, double multiplier, String assertText):
    this._asinIter1_1(
      d- (((((((((((s10*d2+s9)*d2+s8)*d2+s7)*d2+s6)*d2+s5)*d2+s4)*d2+s3)*d2+s2)*d2+s1)*d2+s0)*d-origin) 
        /((((((((((c10*d2+c9)*d2+c8)*d2+c7)*d2+c6)*d2+c5)*d2+c4)*d2+c3)*d2+c2)*d2+c1)*d2+c0),
      origin,shift, transformEnum, multiplier, assertText
    );
  const ConstMath._asinIter1_1(double d,double origin,double shift,int transformEnum, double multiplier, String assertText):
    this._asinIter1_2(d, d*d, origin, shift, transformEnum, multiplier, assertText);
  const ConstMath._asinIter1_2(double d, double d2,double origin, double shift, int transformEnum, double multiplier, String assertText):
    this._asinIter2_1(
      d- (((((((((((s10*d2+s9)*d2+s8)*d2+s7)*d2+s6)*d2+s5)*d2+s4)*d2+s3)*d2+s2)*d2+s1)*d2+s0)*d-origin) 
        /((((((((((c10*d2+c9)*d2+c8)*d2+c7)*d2+c6)*d2+c5)*d2+c4)*d2+c3)*d2+c2)*d2+c1)*d2+c0),
      origin,shift, transformEnum, multiplier, assertText
    );
  const ConstMath._asinIter2_1(double d,double origin,double shift,int transformEnum, double multiplier, String assertText):
    this._asinIter2_2(d, d*d, origin, shift, transformEnum, multiplier, assertText);
  const ConstMath._asinIter2_2(double d, double d2,double origin, double shift, int transformEnum, double multiplier, String assertText):
    this._asinIter3_1(
      d- (((((((((((s10*d2+s9)*d2+s8)*d2+s7)*d2+s6)*d2+s5)*d2+s4)*d2+s3)*d2+s2)*d2+s1)*d2+s0)*d-origin) 
        /((((((((((c10*d2+c9)*d2+c8)*d2+c7)*d2+c6)*d2+c5)*d2+c4)*d2+c3)*d2+c2)*d2+c1)*d2+c0),
      origin,shift, transformEnum, multiplier, assertText
    );
  const ConstMath._asinIter3_1(double d,double origin,double shift,int transformEnum, double multiplier, String assertText):
    this._asinIter3_2(d, d*d, origin, shift, transformEnum, multiplier, assertText);
  const ConstMath._asinIter3_2(double d, double d2,double origin, double shift, int transformEnum, double multiplier, String assertText):
    this._asinIter4_1(
      d- (((((((((((s10*d2+s9)*d2+s8)*d2+s7)*d2+s6)*d2+s5)*d2+s4)*d2+s3)*d2+s2)*d2+s1)*d2+s0)*d-origin) 
        /((((((((((c10*d2+c9)*d2+c8)*d2+c7)*d2+c6)*d2+c5)*d2+c4)*d2+c3)*d2+c2)*d2+c1)*d2+c0),
      origin,shift, transformEnum, multiplier, assertText
    );
  const ConstMath._asinIter4_1(double d,double origin,double shift,int transformEnum, double multiplier, String assertText):
    this._asinIter4_2(d, d*d, origin, shift, transformEnum, multiplier, assertText);
  const ConstMath._asinIter4_2(double d, double d2,double origin, double shift, int transformEnum, double multiplier, String assertText):
    this._asinIter5_1(
      d- (((((((((((s10*d2+s9)*d2+s8)*d2+s7)*d2+s6)*d2+s5)*d2+s4)*d2+s3)*d2+s2)*d2+s1)*d2+s0)*d-origin) 
        /((((((((((c10*d2+c9)*d2+c8)*d2+c7)*d2+c6)*d2+c5)*d2+c4)*d2+c3)*d2+c2)*d2+c1)*d2+c0),
      origin,shift, transformEnum, multiplier, assertText
    );
  const ConstMath._asinIter5_1(double d,double origin,double shift,int transformEnum, double multiplier, String assertText):
    this._asinIter5_2(d, d*d, origin, shift, transformEnum, multiplier, assertText);
  const ConstMath._asinIter5_2(double d, double d2,double origin, double shift, int transformEnum, double multiplier, String assertText):
    this._asinIter6_1(
      d- (((((((((((s10*d2+s9)*d2+s8)*d2+s7)*d2+s6)*d2+s5)*d2+s4)*d2+s3)*d2+s2)*d2+s1)*d2+s0)*d-origin) 
        /((((((((((c10*d2+c9)*d2+c8)*d2+c7)*d2+c6)*d2+c5)*d2+c4)*d2+c3)*d2+c2)*d2+c1)*d2+c0),
      origin,shift, transformEnum, multiplier, assertText
    );
  const ConstMath._asinIter6_1(double d,double origin,double shift,int transformEnum, double multiplier, String assertText):
    this._asinIter6_2(d, d*d, origin, shift, transformEnum, multiplier, assertText);
  const ConstMath._asinIter6_2(double d, double d2,double origin, double shift, int transformEnum, double multiplier, String assertText):
    this._asinIter7_1(
      d- (((((((((((s10*d2+s9)*d2+s8)*d2+s7)*d2+s6)*d2+s5)*d2+s4)*d2+s3)*d2+s2)*d2+s1)*d2+s0)*d-origin) 
        /((((((((((c10*d2+c9)*d2+c8)*d2+c7)*d2+c6)*d2+c5)*d2+c4)*d2+c3)*d2+c2)*d2+c1)*d2+c0),
      origin,shift, transformEnum, multiplier, assertText
    );
  const ConstMath._asinIter7_1(double d,double origin,double shift,int transformEnum, double multiplier, String assertText):
    this._asinIter7_2(d, d*d, origin, shift, transformEnum, multiplier, assertText);
  const ConstMath._asinIter7_2(double d, double d2,double origin, double shift, int transformEnum, double multiplier, String assertText):
    this._asinIter8_1(
      d- (((((((((((s10*d2+s9)*d2+s8)*d2+s7)*d2+s6)*d2+s5)*d2+s4)*d2+s3)*d2+s2)*d2+s1)*d2+s0)*d-origin) 
        /((((((((((c10*d2+c9)*d2+c8)*d2+c7)*d2+c6)*d2+c5)*d2+c4)*d2+c3)*d2+c2)*d2+c1)*d2+c0),
      origin,shift, transformEnum, multiplier, assertText
    );
  const ConstMath._asinIter8_1(double d,double origin,double shift,int transformEnum, double multiplier, String assertText):
    this._asinIter8_2(d, d*d, origin, shift, transformEnum, multiplier, assertText);
  const ConstMath._asinIter8_2(double d, double d2,double origin, double shift, int transformEnum, double multiplier, String assertText):
    this._asinIter9_1(
      d- (((((((((((s10*d2+s9)*d2+s8)*d2+s7)*d2+s6)*d2+s5)*d2+s4)*d2+s3)*d2+s2)*d2+s1)*d2+s0)*d-origin) 
        /((((((((((c10*d2+c9)*d2+c8)*d2+c7)*d2+c6)*d2+c5)*d2+c4)*d2+c3)*d2+c2)*d2+c1)*d2+c0),
      origin,shift, transformEnum, multiplier, assertText
    );
  const ConstMath._asinIter9_1(double d,double origin,double shift,int transformEnum, double multiplier, String assertText):
    this._asinIter9_2(d, d*d, origin, shift, transformEnum, multiplier, assertText);
  const ConstMath._asinIter9_2(double d, double d2,double origin, double shift, int transformEnum, double multiplier, String assertText):
    this._asinIter10_1(
      d- (((((((((((s10*d2+s9)*d2+s8)*d2+s7)*d2+s6)*d2+s5)*d2+s4)*d2+s3)*d2+s2)*d2+s1)*d2+s0)*d-origin) 
        /((((((((((c10*d2+c9)*d2+c8)*d2+c7)*d2+c6)*d2+c5)*d2+c4)*d2+c3)*d2+c2)*d2+c1)*d2+c0),
      origin,shift, transformEnum, multiplier, assertText
    );
  const ConstMath._asinIter10_1(double d,double origin,double shift,int transformEnum, double multiplier, String assertText):
    this._asinIter10_2(d, d*d, origin, shift, transformEnum, multiplier, assertText);
  const ConstMath._asinIter10_2(double d, double d2,double origin, double shift, int transformEnum, double multiplier, String assertText) :
    this._transform(
      origin == 1.0?halfPi: 
        origin ==-1.0 ?-halfPi: 
        d- (((((((((((s10*d2+s9)*d2+s8)*d2+s7)*d2+s6)*d2+s5)*d2+s4)*d2+s3)*d2+s2)*d2+s1)*d2+s0)*d-origin) 
        /((((((((((c10*d2+c9)*d2+c8)*d2+c7)*d2+c6)*d2+c5)*d2+c4)*d2+c3)*d2+c2)*d2+c1)*d2+c0),
      multiplier,
      origin > 1 || origin <-1?transformEnum|transformAssertFailed:transformEnum,
      shift,
      origin > 1 || origin <-1 ?'$assertText,$origin is not in range [-1.0, 1.0]':assertText
    );
  ///atan2 mapping logic
  const ConstMath._atan2Map0(double y, double x, double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._atan2Base(
      x == 0.0 ? 0.0 : 
      y/x <-1 || y/x > 1 ? x/y: 
      y/x,
      shift+((x == 0.0&&y > 0.0?halfPi:
        x == 0.0&&y < 0.0?-halfPi:
        x < 0.0&&y>=0.0?pi1:
        x < 0.0&&y < 0.0?-pi1:
        0.0)+(x == 0?0.0:
          y/x <-1.0?-halfPi:
          y/x > 1.0?halfPi:
          0.0))*multiplier,
      x != 0.0&&(y/x <-1 || y/x > 1) ? -1/multiplier:multiplier,
      transformEnum | ((x == 0.0&&y == 0.0)|| ((x<=0 || y/x>1 || y/x < -1)&&(transformEnum!=transformNone))
        ?transformAssertFailed:transformNone),
      '$assertText${(x == 0.0&&y == 0.0)?',_atan2 undefined at (0,0)':''}'
      '${(x<=0 || y/x>1 || y/x < -1)&&(transformEnum&~transformAssertFailed!=0)?'without condition meet x>0 && -1<=y/x<=1 , applying transformation besides shifting to _atan2() is not allowed':''}',
    );
  ///atan2 calculating algorithm
  const ConstMath._atan2Base(
    double d,
    double shift,
    double multiplier,
    TransformEnum transformEnum,
    String assertText,
  ):this._pade(
    d,
    a0: 4.25772129E-17,
    a1: 4.86816205E-17,
    a2: 1.25756219E-17,
    a3: 4.02179944E-19,
    b0: 4.25772129E-17,
    b1: 6.28740248E-17,
    b2: 2.50182216E-17,
    b3: 2.24872633E-18,
    shift: shift,
    transformEnum: transformEnum,
    assertText: assertText,
    multiplier: multiplier
  );

  ///transform to a predictable zone, than iterates with Newton's method.
  const ConstMath._sqrtApprox1(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtApprox2(d > p10?d/p10:d, multiplier*(d > p10?p9:1), shift, transformEnum,assertText);
  const ConstMath._sqrtApprox2(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtApprox3(d > p9?d/p9:d, multiplier*(d > p9?p8:1), shift, transformEnum,assertText);
  const ConstMath._sqrtApprox3(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtApprox4(d > p8?d/p8:d,multiplier*(d > p8?p7:1), shift, transformEnum,assertText);
  const ConstMath._sqrtApprox4(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtApprox5(d > p7?d/p7:d,multiplier*(d > p7?p6:1), shift, transformEnum,assertText);
  const ConstMath._sqrtApprox5(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtApprox6(d > p6?d/p6:d,multiplier*(d > p6?p5:1), shift, transformEnum,assertText);
  const ConstMath._sqrtApprox6(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtApprox7(d > p5?d/p5:d,multiplier*(d > p5?p4:1), shift, transformEnum,assertText);
  const ConstMath._sqrtApprox7(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtApprox8(d > p4?d/p4:d,multiplier*(d > p4?p3:1), shift, transformEnum,assertText);
  const ConstMath._sqrtApprox8(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtApprox9(d > p3?d/p3:d,multiplier*(d > p3?p2:1), shift, transformEnum,assertText);
  const ConstMath._sqrtApprox9(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtApprox10(d > p2?d/p2:d,multiplier*(d > p2?p1:1), shift, transformEnum,assertText);
  const ConstMath._sqrtApprox10(double d, double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtIter1(d<=0.0?double.infinity:(d+2)/3,d,multiplier,shift,transformEnum|(d<0?transformAssertFailed:transformNone), '$assertText,${d<0?'sqrt cannot be applied to $d':''}');
  const ConstMath._sqrtIter1(double d, double origin,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtIter2((d+origin/d)/2,origin,multiplier,shift,transformEnum,assertText);
  const ConstMath._sqrtIter2(double d, double origin,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtIter3((d+origin/d)/2,origin,multiplier,shift,transformEnum,assertText);
  const ConstMath._sqrtIter3(double d, double origin,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtIter4((d+origin/d)/2,origin,multiplier,shift,transformEnum,assertText);
  const ConstMath._sqrtIter4(double d, double origin,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtIter5((d+origin/d)/2,origin,multiplier,shift,transformEnum,assertText);
  const ConstMath._sqrtIter5(double d, double origin,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtIter6((d+origin/d)/2,origin,multiplier,shift,transformEnum,assertText);
  const ConstMath._sqrtIter6(double d, double origin,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtIter7((d+origin/d)/2,origin,multiplier,shift,transformEnum,assertText);
  const ConstMath._sqrtIter7(double d, double origin,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtIter8((d+origin/d)/2,origin,multiplier,shift,transformEnum,assertText);
  const ConstMath._sqrtIter8(double d, double origin,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtIter9((d+origin/d)/2,origin,multiplier,shift,transformEnum,assertText);
  const ConstMath._sqrtIter9(double d, double origin,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._sqrtIter10((d+origin/d)/2,origin,multiplier,shift,transformEnum,assertText);
  const ConstMath._sqrtIter10(double d, double origin,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._transform(origin == 0?0.0:(d+origin/d)/2,multiplier,transformEnum,shift,assertText);

  ///transform to a predictable zone, than iterates with Newton's method.
  const ConstMath._cbrtApprox1(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._cbrtApprox2(d>p9_3?d/p9_3:d,multiplier*(d>p9_3?p8:1.0),shift,transformEnum,assertText);
  const ConstMath._cbrtApprox2(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._cbrtApprox3(d>p8_3?d/p8_3:d,multiplier*(d>p8_3?p7:1.0),shift,transformEnum,assertText);
  const ConstMath._cbrtApprox3(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._cbrtApprox4(d>p7_3?d/p7_3:d,multiplier*(d>p7_3?p6:1.0),shift,transformEnum,assertText);
  const ConstMath._cbrtApprox4(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._cbrtApprox5(d>p6_3?d/p6_3:d,multiplier*(d>p6_3?p5:1.0),shift,transformEnum,assertText);
  const ConstMath._cbrtApprox5(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._cbrtApprox6(d>p5_3?d/p5_3:d,multiplier*(d>p5_3?p4:1.0),shift,transformEnum,assertText);
  const ConstMath._cbrtApprox6(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._cbrtApprox7(d>p4_3?d/p4_3:d,multiplier*(d>p4_3?p3:1.0),shift,transformEnum,assertText);
  const ConstMath._cbrtApprox7(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._cbrtApprox8(d>p3_3?d/p3_3:d,multiplier*(d>p3_3?p2:1.0),shift,transformEnum,assertText);
  const ConstMath._cbrtApprox8(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._cbrtApprox9(d>p2_3?d/p2_3:d,multiplier*(d>p2_3?p1:1.0),shift,transformEnum,assertText);
  const ConstMath._cbrtApprox9(double d,double multiplier,  double shift, TransformEnum transformEnum, String assertText):
    this._cbrtIter1(d == 0.0?double.infinity:(d+6.0)/7,d/3,multiplier,shift,transformEnum,assertText);
  const ConstMath._cbrtIter1(double d,double originOver3, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._cbrtIter2((d*twoThird+originOver3/(d*d)),originOver3,multiplier,shift,transformEnum,assertText);
  const ConstMath._cbrtIter2(double d,double originOver3, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._cbrtIter3((d*twoThird+originOver3/(d*d)),originOver3,multiplier,shift,transformEnum,assertText);
  const ConstMath._cbrtIter3(double d,double originOver3, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._cbrtIter4((d*twoThird+originOver3/(d*d)),originOver3,multiplier,shift,transformEnum,assertText);
  const ConstMath._cbrtIter4(double d,double originOver3, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._cbrtIter5((d*twoThird+originOver3/(d*d)),originOver3,multiplier,shift,transformEnum,assertText);
  const ConstMath._cbrtIter5(double d,double originOver3, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._cbrtIter6((d*twoThird+originOver3/(d*d)),originOver3,multiplier,shift,transformEnum,assertText);
  const ConstMath._cbrtIter6(double d,double originOver3, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._cbrtIter7((d*twoThird+originOver3/(d*d)),originOver3,multiplier,shift,transformEnum,assertText);
  const ConstMath._cbrtIter7(double d,double originOver3, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._cbrtIter8((d*twoThird+originOver3/(d*d)),originOver3,multiplier,shift,transformEnum,assertText);
  const ConstMath._cbrtIter8(double d,double originOver3, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._cbrtIter9((d*twoThird+originOver3/(d*d)),originOver3,multiplier,shift,transformEnum,assertText);
  const ConstMath._cbrtIter9(double d,double originOver3, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._cbrtIter10((d*twoThird+originOver3/(d*d)),originOver3,multiplier,shift,transformEnum,assertText);
  const ConstMath._cbrtIter10(double d,double originOver3, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._transform(originOver3 == 0.0?0.0:(d*twoThird+originOver3/(d*d)),multiplier,transformEnum,shift,assertText);

  ///transform to a predictable zone, than iterates with Newton's method.
  const ConstMath._rt5Approx1(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt5Approx2(d>p8_5?d/p8_5:d,multiplier*(d>p8_5?p7:1.0),shift,transformEnum,assertText);
  const ConstMath._rt5Approx2(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt5Approx3(d>p7_5?d/p7_5:d,multiplier*(d>p7_5?p6:1.0),shift,transformEnum,assertText);
  const ConstMath._rt5Approx3(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt5Approx4(d>p6_5?d/p6_5:d,multiplier*(d>p6_5?p5:1.0),shift,transformEnum,assertText);
  const ConstMath._rt5Approx4(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt5Approx6(d>p5_5?d/p5_5:d,multiplier*(d>p5_5?p4:1.0),shift,transformEnum,assertText);
  const ConstMath._rt5Approx6(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt5Approx7(d>p4_5?d/p4_5:d,multiplier*(d>p4_5?p3:1.0),shift,transformEnum,assertText);
  const ConstMath._rt5Approx7(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt5Approx8(d>p3_5?d/p3_5:d,multiplier*(d>p3_5?p2:1.0),shift,transformEnum,assertText);
  const ConstMath._rt5Approx8(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt5Approx9(d>p2_5?d/p2_5:d,multiplier*(d>p2_5?p1:1.0),shift,transformEnum,assertText);
  const ConstMath._rt5Approx9(double d,double multiplier,  double shift, TransformEnum transformEnum, String assertText):
    this._rt5Iter1(d == 0.0?double.infinity:(d+30.0)/31,d/5,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt5Iter1(double d,double originOver5, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt5Iter2((d*0.8+originOver5/(d*d*d*d)),originOver5,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt5Iter2(double d,double originOver5, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt5Iter3((d*0.8+originOver5/(d*d*d*d)),originOver5,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt5Iter3(double d,double originOver5, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt5Iter4((d*0.8+originOver5/(d*d*d*d)),originOver5,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt5Iter4(double d,double originOver5, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt5Iter5((d*0.8+originOver5/(d*d*d*d)),originOver5,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt5Iter5(double d,double originOver5, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt5Iter6((d*0.8+originOver5/(d*d*d*d)),originOver5,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt5Iter6(double d,double originOver5, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt5Iter7((d*0.8+originOver5/(d*d*d*d)),originOver5,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt5Iter7(double d,double originOver5, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt5Iter8((d*0.8+originOver5/(d*d*d*d)),originOver5,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt5Iter8(double d,double originOver5, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt5Iter9((d*0.8+originOver5/(d*d*d*d)),originOver5,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt5Iter9(double d,double originOver5, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt5Iter10((d*0.8+originOver5/(d*d*d*d)),originOver5,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt5Iter10(double d,double originOver5, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._transform(originOver5 == 0.0?0.0:(d*0.8+originOver5/(d*d*d*d)),multiplier,transformEnum,shift,assertText);

  ///transform to a predictable zone, than iterates with Newton's method.
  const ConstMath._rt7Approx1(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt7Approx2(d>p8_7?d/p8_7:d,multiplier*(d>p8_7?p7:1.0),shift,transformEnum,assertText);
  const ConstMath._rt7Approx2(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt7Approx3(d>p7_7?d/p7_7:d,multiplier*(d>p7_7?p6:1.0),shift,transformEnum,assertText);
  const ConstMath._rt7Approx3(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt7Approx4(d>p6_7?d/p6_7:d,multiplier*(d>p6_7?p5:1.0),shift,transformEnum,assertText);
  const ConstMath._rt7Approx4(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt7Approx6(d>p5_7?d/p5_7:d,multiplier*(d>p5_7?p4:1.0),shift,transformEnum,assertText);
  const ConstMath._rt7Approx6(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt7Approx7(d>p4_7?d/p4_7:d,multiplier*(d>p4_7?p3:1.0),shift,transformEnum,assertText);
  const ConstMath._rt7Approx7(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt7Approx8(d>p3_7?d/p3_7:d,multiplier*(d>p3_7?p2:1.0),shift,transformEnum,assertText);
  const ConstMath._rt7Approx8(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this._rt7Approx9(d>p2_7?d/p2_7:d,multiplier*(d>p2_7?p1:1.0),shift,transformEnum,assertText);
  const ConstMath._rt7Approx9(double d,double multiplier,  double shift, TransformEnum transformEnum, String assertText):
    this._rt7Iter1(d == 0.0?double.infinity:(d+126.0)/127,d/7,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt7Iter1(double d,double originOver7, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt7Iter2((d*sixOverSeven+originOver7/(d*d*d*d*d*d)),originOver7,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt7Iter2(double d,double originOver7, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt7Iter3((d*sixOverSeven+originOver7/(d*d*d*d*d*d)),originOver7,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt7Iter3(double d,double originOver7, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt7Iter4((d*sixOverSeven+originOver7/(d*d*d*d*d*d)),originOver7,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt7Iter4(double d,double originOver7, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt7Iter5((d*sixOverSeven+originOver7/(d*d*d*d*d*d)),originOver7,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt7Iter5(double d,double originOver7, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt7Iter6((d*sixOverSeven+originOver7/(d*d*d*d*d*d)),originOver7,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt7Iter6(double d,double originOver7, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt7Iter7((d*sixOverSeven+originOver7/(d*d*d*d*d*d)),originOver7,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt7Iter7(double d,double originOver7, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt7Iter8((d*sixOverSeven+originOver7/(d*d*d*d*d*d)),originOver7,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt7Iter8(double d,double originOver7, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt7Iter9((d*sixOverSeven+originOver7/(d*d*d*d*d*d)),originOver7,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt7Iter9(double d,double originOver7, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._rt7Iter10((d*sixOverSeven+originOver7/(d*d*d*d*d*d)),originOver7,multiplier,shift,transformEnum,assertText);
  const ConstMath._rt7Iter10(double d,double originOver7, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._transform(originOver7 == 0.0?0.0:(d*sixOverSeven+originOver7/(d*d*d*d*d*d)),multiplier,transformEnum,shift,assertText);

  //logic of erfc, redirected to _exp()
  const ConstMath._erfcBase(double d,double multiplier, double shift, TransformEnum transformEnum, String assertText):
    this.__erfcBase(d, d*d, multiplier, shift, transformEnum, assertText);
  const ConstMath.__erfcBase(double d, double d2, double multiplier,double shift, TransformEnum transformEnum, String assertText):
    this._exp(d2,multiplier:multiplier *
    ((d +2.06955023132914151)/  0.56418958354775629)*
    ((d2+3.47954057099518960*d+12.06166887286239555)/(d2+2.71078540045147805*d+ 5.80755613130301624))*
    ((d2+3.72068443960225092*d+ 8.44319781003968454)/(d2+3.47469513777439592*d+12.07402036406381411))*
    ((d2+3.90225704029924078*d+ 6.36161630953880464)/(d2+4.00561509202259545*d+ 9.30596659485887898))*
    ((d2+4.03296893109262491*d+ 5.13578530585681539)/(d2+5.16722705817812584*d+ 9.12661617673673262))*
    ((d2+4.11240942957450885*d+ 4.48640329523408675)/(d2+5.95908795446633271*d+ 9.19435612886969243)),
  shift:shift,transformEnum: transformEnum,assertText: assertText);

}
