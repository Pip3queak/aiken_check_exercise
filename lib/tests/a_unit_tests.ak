use modules/functions

/// Fix me in as many ways as possible, at least 2 ways
/// test unit_test_1() {
///   False
/// }
test unit_t1_s1() fail {
  False
}

test unit_t1_s2() {
  True
}

/// Fix me in as many ways as possible, at least 2 ways
/// test unit_test_2() {
///   1 + 1 != 2
/// }
test unit_t2_s1() fail {
  1 + 1 != 2
}

test unit_t2_s2() {
  1 + 1 == 2
}

/// test unit_test_3() {
///   // DO NOT MODIFY BELOW //
///   let i = 3
///   functions.add_1(i) == i
///   // DO NOT MODIFY ABOVE //
/// }
test unit_t3_s1() fail {
  let i = 3
  functions.add_1(i) == i
}

/// test unit_test_4() fail {
///   // DO NOT MODIFY BELOW //
///   let i = 4
///   functions.is_even(i)
///   // DO NOT MODIFY ABOVE //
/// }
test unit_t4_s1() {
  let i = 4
  functions.is_even(i)
}
