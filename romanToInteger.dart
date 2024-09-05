

int romanToInt(String s) {

  /// this is a roman character map
  Map<String , int> romanMap = {
    "I" : 1,
    "V" : 5,
    "X" : 10,
    "L" : 50,
    "C" : 100,
    "D" : 500,
    "M" : 1000
  };

  /// in total i store total vale and in previousRomanValue is storing last value;
  int total = 0;
  int previousRomanValue = 0;

  /// looping the s from oppisite direction
  for(int i = s.length -1 ; i >=0; i--){
    String currentChar = s[i];
    int currentValue = romanMap[currentChar]!;

    /// checking if the currentValue value is less than previousRomanValue
    ///  then minus the current value from total else add
    if(currentValue < previousRomanValue){
      total -= currentValue;
    }else{
      total += currentValue;
    }

    /// assinging the current value
    previousRomanValue = currentValue;
    
  }


  return total;
}



void main() {

  print(romanToInt("III"));      // Output: 3
  print(romanToInt("LVIII"));    // Output: 58
  print(romanToInt("MCMXCIV"));  // Output: 1994

}



// int romanToInt(String s) {
//   // Define a map for Roman numeral values
//   Map<String, int> romanMap = {
//     'I': 1,
//     'V': 5,
//     'X': 10,
//     'L': 50,
//     'C': 100,
//     'D': 500,
//     'M': 1000,
//   };

//   int total = 0;
//   int prevValue = 0;

//   // Loop through the string characters from the end
//   for (int i = s.length - 1; i >= 0; i--) {
//     String currentChar = s[i];
//     int currentValue = romanMap[currentChar]!;

//     // Check if we need to subtract the current value or add it
//     if (currentValue < prevValue) {
//       total -= currentValue;
//     } else {
//       total += currentValue;
//     }

//     // Update the previous value to the current value
//     prevValue = currentValue;
//     print("pree value $prevValue");
//   }

//   return total;
// }

// void main() {
//   // Test cases
//   print(romanToInt("III"));      // Output: 3
//   print(romanToInt("LVIII"));    // Output: 58
//   print(romanToInt("MCMXCIV"));  // Output: 1994
// }
