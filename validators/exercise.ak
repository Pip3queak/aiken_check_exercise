use cardano/assets.{PolicyId}
use cardano/transaction.{OutputReference, Transaction}
use cardano/address.{VerificationKey}


validator validate {
  mint(redeemer: Int, policy_id _policy_id: PolicyId, tx _tx: Transaction) {
    (redeemer != 42)?
  }


  spend(
    datum: Option<Data>,
    redeemer _redeemer: Void,
    utxo _utxo: OutputReference,
    tx _tx: Transaction,
  ) {
    when datum is {
      Some(data) ->
        if data is Int {
          (data != 42)?
        } else if data is ByteArray {
          (data != "Hello, World!")?
        } else if data is VerificationKey(hash) {
          hash == "VerificationKeyHash"
        } else {
          False
        }

      _ -> True
    }
  }

  else(_) {
    fail
  }
}
