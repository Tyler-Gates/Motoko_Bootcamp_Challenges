import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";
import Char "mo:base/Char";
import Text "mo:base/Text";

actor {

  public func nat_to_nat8(n: Nat) : async Nat8 {
    if(n > 255)
      return 0;
    return Nat8.fromNat(n);
  };

  public func max_number_with_n_bits(n: Nat) : async Nat {
    var temp : Nat = n;
    var ans : Nat = 0;
    var exp : Nat = 1;
    while(temp > 0){
      ans+=exp;
      exp*=2;
      temp-=1;
    };
    return ans;
  };
  
  public func decimal_to_bits(n: Nat) : async Text {
    var temp : Nat = n;
    var ans : Text = "";
    while(temp > 0){
      if(temp % 2 == 0){
        ans#="0";
      }
      else{
        ans#="1";
      };
      temp/=2;
      if(temp == 1){
        ans#="1";
        temp:=0;
      };
    };
    return ans;
  };

//I made it a text return otherwise it would show the ascii
  public func capitalize_character(t : Char) : async Text {
    return Char.toText(Char.fromNat32(Char.toNat32(t)-32));
  };

  public func capitalize_text(t : Text) : async Text {
    var ans : Text ="";
    for(char in t.chars()){
      ans#= Char.toText(Char.fromNat32(Char.toNat32(char)-32));
    };
    return ans;
  };

  public func is_inside(t : Text, c : Char) : async Bool{
  var flag : Bool = false;
    for(char in t.chars()){
      if(char == c){
        return true;
      };
    };   
    return false;
  };

  public func trim_whitespace(t : Text) : async Text {
    let space = #text(" ");
    return Text.trim(t,space);
  };

  public func duplicated_character(t : Text) : async Text {
    
    for(char in t.chars()){
      
    };
  };
};
