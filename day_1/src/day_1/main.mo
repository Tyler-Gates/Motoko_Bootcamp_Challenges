import Nat "mo:base/Nat";
import Array "mo:base/Array";

actor {

  public func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };

  public func add(num1 : Nat, num2 : Nat) : async Nat {
    return num1 + num2;
  };

  public func square(num : Nat) : async Nat {
    return num * num;
  };

  public func days_to_second(days : Nat) : async Text {
    return Nat.toText(days * 86400) # " seconds";
  };

  private var _counter : Nat = 0;
  public func increment_counter(increment : Nat) : async Nat {
    _counter+=increment;
    return _counter;
  };

  public func clear_counter() : async Text{
    _counter := 0;
    return "The counter has been cleared!";
  };

  public func divide(num1 : Nat, num2 : Nat) : async Text {
    if(num1 % num2 == 0){
      return "Input 1 is divisible by input 2!";
    }
    else{
      return "Sorry, Input 1 not divisible by input 2.";
    };
  };

  public func is_even(num : Nat) : async Bool{
    return num % 2 == 0;
  };

  public func sum_of_array(array : [Nat]) : async Nat{
    if(array.size() == 0){
      return 0;
    };
    var sum : Nat = 0;
    for (value in array.vals()){
            sum+= value;
        };
    return sum;
  };

  public func maximum(array : [Nat]) : async Nat{
    if(array.size() == 0){
      return 0;
    };
    var max : Nat = 0;
    for (value in array.vals()){
      if(value > max){
        max := value;
      };
    };
    return max;
  };

  public func remove_from_array(array : [Nat], num : Nat) : async [Nat]{
    var newArray : [Nat] = [];
    for (value in array.vals()){
      if(value != num){
        newArray:= Array.append(newArray, [value]);
      };
    };
    return newArray;
  };

//I considered using Array.sort(array, Nat.compare) but it looks like it's wanted manually.
  public func selection_sort(array : [Nat]) : async [Nat] {
    var temp : [var Nat] = Array.thaw(array);
    var min : Nat = 0;
    var i : Nat = 0;
    var j : Nat = 0;
    while( i < temp.size() - 1)
    {
      min:=temp[j];
      while(j < temp.size()){
        if(temp[j] < min){
          min:=temp[j];
          temp[j]:=temp[i];
          temp[i]:=min;
        };
        j+=1;
      };
      i+=1;
      j:=i;
    };
    return Array.freeze(temp);
  };
};
