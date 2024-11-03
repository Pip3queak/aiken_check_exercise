use aiken/collection/list
use aiken/fuzz

/// Fix me in as many ways as possible, at least 2 ways
/// test property_test_1(i via fuzz.int()) {
///   i / i == i
/// }
test property_t1_s1(i via fuzz.int()) fail once {
  i / i == i
}

test property_t1_s2(i via fuzz.int()) {
  i / 1 == i
  // i / i may not always be 1 because i could be 0
}

/// test property_test_2(ls via fuzz.list_between(fuzz.constant(0), 5, 10)) {
///   // DO NOT MODIFY BELOW //
///   let len = ls |> list.length
///   len < 5
///   // DO NOT MODIFY ABOVE //
/// }
test property_t2_s1(ls via fuzz.list_between(fuzz.constant(0), 5, 10)) fail {
  let len = ls |> list.length
  len < 5
}

/// test property_test_3(b via fuzz.bool()) {
///   // DO NOT MODIFY BELOW //
///   b
///   // DO NOT MODIFY ABOVE //
/// }
test property_t3_s1(b via fuzz.bool()) fail once {
  b
}

/// test property_test_4(b8 via fuzz.byte()) fail {
///   // DO NOT MODIFY BELOW //
///   b8 % 2 == 0
///   // DO NOT MODIFY ABOVE //
/// }
test property_t4_s1(b8 via fuzz.byte()) fail once {
  b8 % 2 == 0
}
