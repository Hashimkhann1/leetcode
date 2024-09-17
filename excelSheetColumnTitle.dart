

String columnTile(int columnNumber) {

  StringBuffer result = StringBuffer();
  
  while(columnNumber > 0){
    columnNumber--;
    int remainder = columnNumber % 26;

    result.write(String.fromCharCode(remainder + 'A'.codeUnitAt(0)));
    columnNumber ~/= 26;
  }

  return result.toString().split('').reversed.join();
  
}

void main() {

  print(columnTile(701));
  // StringBuffer result = StringBuffer();

  // // print(columnTile(28));
  // result.write(String.fromCharCode(2 + "A".codeUnitAt(0)));
  // print(result);

}



// String convertToTitle(int columnNumber) {
//   StringBuffer result = StringBuffer();
  
//   while (columnNumber > 0) {
//     columnNumber--;  // Adjust to 0-indexed
//     int remainder = columnNumber % 26;
//     result.write(String.fromCharCode(remainder + 'A'.codeUnitAt(0)));
//     columnNumber ~/= 26;  // Divide by 26 for the next iteration
//   }
  
//   return result.toString().split('').reversed.join();  // Reverse the result string
// }

// void main() {
//   print(convertToTitle(1));   // Output: "A"
//   print(convertToTitle(28));  // Output: "AB"
//   print(convertToTitle(701)); // Output: "ZY"
// }



