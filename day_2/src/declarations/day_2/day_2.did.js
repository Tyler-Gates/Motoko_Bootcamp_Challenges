export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'capitalize_character' : IDL.Func([IDL.Nat32], [IDL.Text], []),
    'capitalize_text' : IDL.Func([IDL.Text], [IDL.Text], []),
    'decimal_to_bits' : IDL.Func([IDL.Nat], [IDL.Text], []),
    'is_inside' : IDL.Func([IDL.Text, IDL.Nat32], [IDL.Bool], []),
    'max_number_with_n_bits' : IDL.Func([IDL.Nat], [IDL.Nat], []),
    'nat_to_nat8' : IDL.Func([IDL.Nat], [IDL.Nat8], []),
    'trim_whitespace' : IDL.Func([IDL.Text], [IDL.Text], []),
  });
};
export const init = ({ IDL }) => { return []; };
