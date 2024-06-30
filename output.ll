; ModuleID = "jojulu"
target triple = "unknown-unknown-unknown"
target datalayout = ""

define i32 @"addition_function_example"(i32 %".1", i32 %".2")
{
entry:
  %"result" = alloca i32
  %".4" = add i32 %".1", %".2"
  store i32 %".4", i32* %"result"
  %".6" = load i32, i32* %"result"
  ret i32 %".6"
}

define i32 @"recursive_factorial_function_example"(i32 %".1")
{
entry:
  %".3" = icmp eq i32 %".1", 0
  br i1 %".3", label %"if_then", label %"if_else"
if_then:
  ret i32 1
if_else:
  br label %"after_if"
after_if:
  %"result" = alloca i32
  %".7" = sub i32 %".1", 1
  store i32 %".7", i32* %"result"
  %".9" = load i32, i32* %"result"
  %".10" = call i32 @"recursive_factorial_function_example"(i32 %".9")
  %".11" = mul i32 %".1", %".10"
  ret i32 %".11"
}

define void @"main"()
{
entry:
  %".2" = bitcast [6 x i8]* @"str_const_3" to i8*
  %".3" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [1 x i8]* @"str_const_6" to i8*
  %".6" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".7" = call i32 (i8*, ...) @"printf"(i8* %".6", i8* %".5")
  %"result_int" = alloca i32
  store i32 0, i32* %"result_int"
  %"result_float" = alloca double
  store double              0x0, double* %"result_float"
  %".10" = bitcast [24 x i8]* @"str_const_7" to i8*
  %".11" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".11", i8* %".10")
  %".13" = mul i32 7, 8
  %".14" = sitofp i32 %".13" to double
  store double %".14", double* %"result_float"
  %".16" = load double, double* %"result_float"
  %".17" = bitcast [4 x i8]* @"fmt_float" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17", double %".16")
  %".19" = bitcast [1 x i8]* @"str_const_9" to i8*
  %".20" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".20", i8* %".19")
  %".22" = bitcast [18 x i8]* @"str_const_10" to i8*
  %".23" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".24" = call i32 (i8*, ...) @"printf"(i8* %".23", i8* %".22")
  %".25" = sitofp i32 2 to double
  %".26" = fdiv double 0x4014000000000000, %".25"
  store double %".26", double* %"result_float"
  %".28" = load double, double* %"result_float"
  %".29" = bitcast [4 x i8]* @"fmt_float" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", double %".28")
  %".31" = bitcast [1 x i8]* @"str_const_11" to i8*
  %".32" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32", i8* %".31")
  %".34" = bitcast [18 x i8]* @"str_const_12" to i8*
  %".35" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35", i8* %".34")
  %".37" = call i32 @"addition_function_example"(i32 1, i32 2)
  store i32 %".37", i32* %"result_int"
  %".39" = load i32, i32* %"result_int"
  %".40" = bitcast [4 x i8]* @"fmt_int" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40", i32 %".39")
  %".42" = bitcast [1 x i8]* @"str_const_14" to i8*
  %".43" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43", i8* %".42")
  %".45" = bitcast [21 x i8]* @"str_const_15" to i8*
  %".46" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46", i8* %".45")
  %".48" = sub i32 20, 10
  %".49" = sub i32 %".48", 13
  store i32 %".49", i32* %"result_int"
  %".51" = load i32, i32* %"result_int"
  %".52" = bitcast [4 x i8]* @"fmt_int" to i8*
  %".53" = call i32 (i8*, ...) @"printf"(i8* %".52", i32 %".51")
  %".54" = bitcast [1 x i8]* @"str_const_16" to i8*
  %".55" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".56" = call i32 (i8*, ...) @"printf"(i8* %".55", i8* %".54")
  %".57" = bitcast [15 x i8]* @"str_const_17" to i8*
  %".58" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".59" = call i32 (i8*, ...) @"printf"(i8* %".58", i8* %".57")
  %".60" = add i32 5, 5
  %".61" = mul i32 4, %".60"
  %".62" = add i32 3, %".61"
  %".63" = sdiv i32 -20, 2
  %".64" = add i32 %".62", %".63"
  %".65" = sitofp i32 %".64" to double
  store double %".65", double* %"result_float"
  %".67" = load double, double* %"result_float"
  %".68" = bitcast [4 x i8]* @"fmt_float" to i8*
  %".69" = call i32 (i8*, ...) @"printf"(i8* %".68", double %".67")
  %".70" = bitcast [1 x i8]* @"str_const_18" to i8*
  %".71" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".72" = call i32 (i8*, ...) @"printf"(i8* %".71", i8* %".70")
  %".73" = bitcast [21 x i8]* @"str_const_19" to i8*
  %".74" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".75" = call i32 (i8*, ...) @"printf"(i8* %".74", i8* %".73")
  %"i" = alloca i32
  store i32 0, i32* %"i"
  br label %"loop_start"
loop_start:
  br i1 true, label %"loop_body", label %"after_loop"
loop_body:
  %".79" = load i32, i32* %"i"
  %".80" = icmp slt i32 %".79", 10
  br i1 %".80", label %"if_then", label %"if_else"
after_loop:
  %".126" = srem i32 4, 2
  %".127" = icmp eq i32 %".126", 0
  br i1 %".127", label %"if_then.5", label %"if_else.5"
if_then:
  %".82" = load i32, i32* %"i"
  %".83" = bitcast [4 x i8]* @"fmt_int" to i8*
  %".84" = call i32 (i8*, ...) @"printf"(i8* %".83", i32 %".82")
  %".85" = load i32, i32* %"i"
  %".86" = icmp sgt i32 %".85", 0
  br i1 %".86", label %"if_then.1", label %"if_else.1"
if_else:
  br label %"after_loop"
after_if:
  br label %"loop_start"
if_then.1:
  %".88" = bitcast [13 x i8]* @"str_const_20" to i8*
  %".89" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".90" = call i32 (i8*, ...) @"printf"(i8* %".89", i8* %".88")
  br label %"after_if.1"
if_else.1:
  br label %"after_if.1"
after_if.1:
  %".93" = load i32, i32* %"i"
  %".94" = icmp sle i32 %".93", 2
  br i1 %".94", label %"if_then.2", label %"if_else.2"
if_then.2:
  %".96" = bitcast [15 x i8]* @"str_const_21" to i8*
  %".97" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".98" = call i32 (i8*, ...) @"printf"(i8* %".97", i8* %".96")
  br label %"after_if.2"
if_else.2:
  %".100" = load i32, i32* %"i"
  %".101" = icmp sge i32 %".100", 6
  br i1 %".101", label %"if_then.3", label %"if_else.3"
after_if.2:
  %".120" = load i32, i32* %"i"
  %".121" = add i32 %".120", 1
  store i32 %".121", i32* %"i"
  br label %"after_if"
if_then.3:
  %".103" = bitcast [14 x i8]* @"str_const_22" to i8*
  %".104" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104", i8* %".103")
  br label %"after_if.3"
if_else.3:
  %".107" = load i32, i32* %"i"
  %".108" = icmp eq i32 %".107", 4
  br i1 %".108", label %"if_then.4", label %"if_else.4"
after_if.3:
  br label %"after_if.2"
if_then.4:
  %".110" = bitcast [6 x i8]* @"str_const_23" to i8*
  %".111" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".112" = call i32 (i8*, ...) @"printf"(i8* %".111", i8* %".110")
  br label %"after_if.4"
if_else.4:
  %".114" = bitcast [21 x i8]* @"str_const_24" to i8*
  %".115" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".116" = call i32 (i8*, ...) @"printf"(i8* %".115", i8* %".114")
  br label %"after_if.4"
after_if.4:
  br label %"after_if.3"
if_then.5:
  %".129" = bitcast [8 x i8]* @"str_const_25" to i8*
  %".130" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".131" = call i32 (i8*, ...) @"printf"(i8* %".130", i8* %".129")
  %".132" = bitcast [1 x i8]* @"str_const_26" to i8*
  %".133" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".134" = call i32 (i8*, ...) @"printf"(i8* %".133", i8* %".132")
  br label %"after_if.5"
if_else.5:
  br label %"after_if.5"
after_if.5:
  %".137" = bitcast [28 x i8]* @"str_const_27" to i8*
  %".138" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".139" = call i32 (i8*, ...) @"printf"(i8* %".138", i8* %".137")
  %"string_test" = alloca i8*
  %".140" = bitcast [5 x i8]* @"str_const_28" to i8*
  store i8* %".140", i8** %"string_test"
  %"bool_test" = alloca i1
  store i1 true, i1* %"bool_test"
  %".143" = load i1, i1* %"bool_test"
  br i1 %".143", label %"if_then.6", label %"if_else.6"
if_then.6:
  %".145" = load i8*, i8** %"string_test"
  %".146" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".147" = call i32 (i8*, ...) @"printf"(i8* %".146", i8* %".145")
  store i1 false, i1* %"bool_test"
  br label %"after_if.6"
if_else.6:
  br label %"after_if.6"
after_if.6:
  %".151" = load i1, i1* %"bool_test"
  %".152" = xor i1 %".151", -1
  br i1 %".152", label %"if_then.7", label %"if_else.7"
if_then.7:
  %".154" = load i8*, i8** %"string_test"
  %".155" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".156" = call i32 (i8*, ...) @"printf"(i8* %".155", i8* %".154")
  br label %"after_if.7"
if_else.7:
  br label %"after_if.7"
after_if.7:
  %"char_test" = alloca i8*
  %".159" = bitcast [2 x i8]* @"str_const_29" to i8*
  store i8* %".159", i8** %"char_test"
  %"true_bool1" = alloca i1
  store i1 true, i1* %"true_bool1"
  %"true_bool2" = alloca i1
  store i1 true, i1* %"true_bool2"
  %"false_bool" = alloca i1
  store i1 false, i1* %"false_bool"
  %".164" = load i1, i1* %"true_bool1"
  %".165" = load i1, i1* %"true_bool2"
  %".166" = and i1 %".164", %".165"
  br i1 %".166", label %"if_then.8", label %"if_else.8"
if_then.8:
  %".168" = load i8*, i8** %"char_test"
  %".169" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".170" = call i32 (i8*, ...) @"printf"(i8* %".169", i8* %".168")
  br label %"after_if.8"
if_else.8:
  br label %"after_if.8"
after_if.8:
  %".173" = load i1, i1* %"false_bool"
  %".174" = load i1, i1* %"true_bool2"
  %".175" = or i1 %".173", %".174"
  br i1 %".175", label %"if_then.9", label %"if_else.9"
if_then.9:
  %".177" = load i8*, i8** %"char_test"
  %".178" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".179" = call i32 (i8*, ...) @"printf"(i8* %".178", i8* %".177")
  br label %"after_if.9"
if_else.9:
  br label %"after_if.9"
after_if.9:
  %".182" = bitcast [1 x i8]* @"str_const_30" to i8*
  %".183" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".184" = call i32 (i8*, ...) @"printf"(i8* %".183", i8* %".182")
  %".185" = bitcast [19 x i8]* @"str_const_31" to i8*
  %".186" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".187" = call i32 (i8*, ...) @"printf"(i8* %".186", i8* %".185")
  %".188" = call i32 @"recursive_factorial_function_example"(i32 4)
  %".189" = bitcast [4 x i8]* @"fmt_int" to i8*
  %".190" = call i32 (i8*, ...) @"printf"(i8* %".189", i32 %".188")
  %".191" = bitcast [1 x i8]* @"str_const_32" to i8*
  %".192" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".193" = call i32 (i8*, ...) @"printf"(i8* %".192", i8* %".191")
  %".194" = bitcast [8 x i8]* @"str_const_33" to i8*
  %".195" = bitcast [4 x i8]* @"fmt_str" to i8*
  %".196" = call i32 (i8*, ...) @"printf"(i8* %".195", i8* %".194")
  ret void
}

@"str_const_3" = internal constant [6 x i8] c"START\00"
declare i32 @"printf"(i8* %".1", ...)

@"fmt_str" = constant [4 x i8] c"%s\0a\00"
@"str_const_6" = internal constant [1 x i8] c"\00"
@"str_const_7" = internal constant [24 x i8] c"Multiplication example:\00"
@"fmt_float" = constant [4 x i8] c"%f\0a\00"
@"str_const_9" = internal constant [1 x i8] c"\00"
@"str_const_10" = internal constant [18 x i8] c"Division example:\00"
@"str_const_11" = internal constant [1 x i8] c"\00"
@"str_const_12" = internal constant [18 x i8] c"Addition example:\00"
@"fmt_int" = constant [4 x i8] c"%d\0a\00"
@"str_const_14" = internal constant [1 x i8] c"\00"
@"str_const_15" = internal constant [21 x i8] c"Subtraction example:\00"
@"str_const_16" = internal constant [1 x i8] c"\00"
@"str_const_17" = internal constant [15 x i8] c"Mixed example:\00"
@"str_const_18" = internal constant [1 x i8] c"\00"
@"str_const_19" = internal constant [21 x i8] c"If and Loop example:\00"
@"str_const_20" = internal constant [13 x i8] c"i = positivo\00"
@"str_const_21" = internal constant [15 x i8] c"i = 2 ou menos\00"
@"str_const_22" = internal constant [14 x i8] c"i = 6 ou mais\00"
@"str_const_23" = internal constant [6 x i8] c"i = 4\00"
@"str_const_24" = internal constant [21 x i8] c"i != 4 e entre 2 e 6\00"
@"str_const_25" = internal constant [8 x i8] c"4 = par\00"
@"str_const_26" = internal constant [1 x i8] c"\00"
@"str_const_27" = internal constant [28 x i8] c"Boolean and String example:\00"
@"str_const_28" = internal constant [5 x i8] c"TRUE\00"
@"str_const_29" = internal constant [2 x i8] c"T\00"
@"str_const_30" = internal constant [1 x i8] c"\00"
@"str_const_31" = internal constant [19 x i8] c"Factorial example:\00"
@"str_const_32" = internal constant [1 x i8] c"\00"
@"str_const_33" = internal constant [8 x i8] c"THE END\00"