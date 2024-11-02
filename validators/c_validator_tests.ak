use aiken/builtin
use cardano/address.{VerificationKey}
use cardano/transaction.{OutputReference}
use exercise



const arbitrary_utxo = OutputReference("", 0)

/// Fix me in as many ways as possible, at least 2 ways
test validator_test_1() {
  !exercise.validate.mint(24, "", transaction.placeholder)
}

/// T1 solution1
test validator_t1_solution1() {
  exercise.validate.mint(24, "", transaction.placeholder)
  // I removed the ! in front to fix it
}

/// T1 solution2
test validator_t1_solution2() {
  !exercise.validate.mint(42, "", transaction.placeholder)
  // negation of a false statement is true - pass
}

/// Fix me in as many ways as possible, at least 2 ways
test validator_test_2() {
  !exercise.validate.spend(
    datum: None,
    redeemer: Void,
    utxo: arbitrary_utxo,
    tx: transaction.placeholder,
  )
}

/// VT2 S1
test validator_t2_s1() {
  exercise.validate.spend(
    datum: None,
    redeemer: Void,
    utxo: arbitrary_utxo,
    tx: transaction.placeholder,
  )
}

/// VT2 S2


test validator_t2_s2() {
let val: Data = "Hello, World!"

  !exercise.validate.spend(
    datum: Some(val),
    redeemer: Void,
    utxo: arbitrary_utxo,
    tx: transaction.placeholder,
  )
}

/// Modify the VALIDATOR logic!
test validator_test_3() {
  let arbitrary_datum: Data = "VerificationKeyHash" |> VerificationKey

  exercise.validate.spend(
    datum: Some(arbitrary_datum),
    redeemer: Void,
    utxo: arbitrary_utxo,
    tx: transaction.placeholder,
  )
}


/// Modify the VALIDATOR logic!
test validator_t3_s1() {
  let arbitrary_datum: Data = "VerificationKeyHash" |> VerificationKey

  exercise.validate.spend(
    datum: Some(arbitrary_datum),
    redeemer: Void,
    utxo: arbitrary_utxo,
    tx: transaction.placeholder,
  )
}

/// Modify the VALIDATOR logic!
test validator_t3_s2() {
  let arbitrary_datum: Data = "VerificationKeyHash" |> VerificationKey

  exercise.validate.spend(
    datum: Some(arbitrary_datum),
    redeemer: Void,
    utxo: arbitrary_utxo,
    tx: transaction.placeholder,
  )
}

test validator_test_4() {
  // DO NOT MODIFY BELOW //
  !exercise.validate.spend(
    datum: Some(24 |> builtin.i_data),
    redeemer: Void,
    utxo: arbitrary_utxo,
    tx: transaction.placeholder,
  )
  // DO NOT MODIFY ABOVE //
}

test validator_test_5() fail {
  // DO NOT MODIFY BELOW //
  !exercise.validate.spend(
    datum: Some("Hello, World!" |> builtin.b_data),
    redeemer: Void,
    utxo: arbitrary_utxo,
    tx: transaction.placeholder,
  )
  // DO NOT MODIFY ABOVE //
}
