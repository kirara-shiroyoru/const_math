///Can be treated as bool arrays representing status.
///To add one in constructor, use [|], to exclusively add one(like negate or
///reciprocal) in constructor, use [^], to remove one, use [&= ~enum]
typedef TransformEnum = int;

///transform enums
const transformNone = 0;
const transformIgnoreExp = 0x2;
const transformAverageWithReciprocal = 0x8;
const transformAverageWithNegativeReciprocal = 0x10;
const transformTanh = 0x20;
const transformReciprocal = 0x40;
const transformTangentReduction = 0x80;
const transformAssertFailed = 0x4000;

///factorials
const fac0 = 1.0;
const fac1 = fac0 * 1;
const fac2 = fac1 * 2;
const fac3 = fac2 * 3;
const fac4 = fac3 * 4;
const fac5 = fac4 * 5;
const fac6 = fac5 * 6;
const fac7 = fac6 * 7;
const fac8 = fac7 * 8;
const fac9 = fac8 * 9;
const fac10 = fac9 * 10;
const fac11 = fac10 * 11;
const fac12 = fac11 * 12;
const fac13 = fac12 * 13;
const fac14 = fac13 * 14;
const fac15 = fac14 * 15;
const fac16 = fac15 * 16;
const fac17 = fac16 * 17;
const fac18 = fac17 * 18;
const fac19 = fac18 * 19;
const fac20 = fac19 * 20;
const fac21 = fac20 * 21;

///pi values
const pi1 = 3.14159265358979323846264338327;
const pi2 = 6.28318530717958647;
const halfPi = 1.57079632679489661923;
const quarterPi = 0.7853981633974483096;

///e^n
const e1 = 2.71828182845904523536;
const e2 = 7.38905609893065022723;
const e4 = 54.598150033144239078110;
const e8 = 2980.957987041728274743;
const e16 = 8886110.520507872636763;
const e32 = 78962960182680.6951609;
const e64 = 6.235149080811616882909E27;
const e128 = 3.887708405994595092222E55;
const e256 = 1.51142766500410354252E111;
const e512 = 2.28441358653975664037875E222;

const antiLn2 = 1.44269504088896340735992;
const antiLn10 = 0.4342944819032518276511;

const ln2 = 0.693147180559945309417;

const twoThird = 2 / 3;
const sixOverSeven = 6 / 7;

///constants for sin taylor series
const s0 = 1 / fac1;
const s1 = -1 / fac3;
const s2 = 1 / fac5;
const s3 = -1 / fac7;
const s4 = 1 / fac9;
const s5 = -1 / fac11;
const s6 = 1 / fac13;
const s7 = -1 / fac15;
const s8 = 1 / fac17;
const s9 = -1 / fac19;
const s10 = 1 / fac21;

///constants for cos taylor series
const c0 = 1 / fac0;
const c1 = -1 / fac2;
const c2 = 1 / fac4;
const c3 = -1 / fac6;
const c4 = 1 / fac8;
const c5 = -1 / fac10;
const c6 = 1 / fac12;
const c7 = -1 / fac14;
const c8 = 1 / fac16;
const c9 = -1 / fac18;
const c10 = 1 / fac20;

///constants for exp taylor series
const n0 = 1 / fac0;
const n1 = 1 / fac1;
const n2 = 1 / fac2;
const n3 = 1 / fac3;
const n4 = 1 / fac4;
const n5 = 1 / fac5;
const n6 = 1 / fac6;
const n7 = 1 / fac7;
const n8 = 1 / fac8;
const n9 = 1 / fac9;
const n10 = 1 / fac10;
const n11 = 1 / fac11;
const n12 = 1 / fac12;
const n13 = 1 / fac13;
const n14 = 1 / fac14;
const n15 = 1 / fac15;
const n16 = 1 / fac16;
const n17 = 1 / fac17;
const n18 = 1 / fac18;
const n19 = 1 / fac19;
const n20 = 1 / fac20;
const n21 = 1 / fac21;
//2^(2^n)
const p0 = 1.4142135623730950488016887;
const p1 = 2.0;
const p2 = p1 * p1; //2^2
const p3 = p2 * p2; //2^4
const p4 = p3 * p3; //_2^8
const p5 = p4 * p4; //_2^16
const p6 = p5 * p5; //_2^32
const p7 = p6 * p6; //_2^64
const p8 = p7 * p7; //_2^128
const p9 = p8 * p8; //_2^256
const p10 = p9 * p9; //_2^512
//2^(3*2^(n-1))
const p2_3 = p1 * p1 * p1;
const p3_3 = p2_3 * p2_3;
const p4_3 = p3_3 * p3_3;
const p5_3 = p4_3 * p4_3;
const p6_3 = p5_3 * p5_3;
const p7_3 = p6_3 * p6_3;
const p8_3 = p7_3 * p7_3;
const p9_3 = p8_3 * p8_3;
//2^(5*2^(n-1))
const p2_5 = p1 * p1 * p1 * p1 * p1;
const p3_5 = p2_5 * p2_5;
const p4_5 = p3_5 * p3_5;
const p5_5 = p4_5 * p4_5;
const p6_5 = p5_5 * p5_5;
const p7_5 = p6_5 * p6_5;
const p8_5 = p7_5 * p7_5;
//2^(7*2^(n-1))
const p2_7 = p1 * p1 * p1 * p1 * p1 * p1 * p1;
const p3_7 = p2_7 * p2_7;
const p4_7 = p3_7 * p3_7;
const p5_7 = p4_7 * p4_7;
const p6_7 = p5_7 * p5_7;
const p7_7 = p6_7 * p6_7;
const p8_7 = p7_7 * p7_7;

///asin taylor series constants
const a0 = 1.0;
const a1 = 1 / 24;
const a2 = 3 / 40;
const a3 = 5 / 112;
const a4 = 35 / 1152;
const a5 = 63 / 2816;
const a6 = 231 / 13312;
const a7 = 143 / 10240;
const a8 = 6435 / 557056;
const a9 = 12155 / 1245184;
const a10 = 46189 / 5505024;

const defaultAssertText = 'error happened';
