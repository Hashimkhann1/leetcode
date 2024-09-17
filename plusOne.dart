
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////// This solution only pass 61 test cases /////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////

// List<int> plusOne(List<int> digits) {

//   /// i convert the list into string and then parse to int
//    int convertedDigits = int.parse(digits.join());
   
//   //  Add 1 to the converted integer
//    convertedDigits += 1;

//    convertedDigits.toString().split('');

//   // converting the convertedDigits into list and makeing it data type int and the return 
//   return convertedDigits.toString().split('').map(int.parse).toList();    
// }



List<int> plusOne(List<int> digits) {

  /// i run the loop from last to first direction
  /// to check if last digit is lees than 9 Add one to it and return the list

  for(int i = digits.length - 1; i >= 0; i--){

      /// checking the integer
      if(digits[i] < 9){
        digits[i]++;
        return digits;
      }

      /// if not less than 9 make it 0
      digits[i] = 0;
  }

  /// here insert the 1 before 0
  digits.insert(0, 1);
  return digits;

}




void main() {

print(plusOne([1,2,3]));
print(plusOne([4,3,2,1]));
print(plusOne([9]));

}