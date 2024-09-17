


String addBinary(String a, String b) {

  int numA = a.length - 1;
  int numB = b.length - 1;
  int carry = 0;
  String result = "";


  while(numA >= 0 || numB >= 0 || carry > 0){
    
    int sum = carry;
    
    if(numA >= 0){
      sum += int.parse(a[numA]);
      numA--;
    }

    if(numB >= 0){
     sum += int.parse(b[numB]);
      numB--;
    }

    result = (sum % 2).toString() + result;
    carry = sum ~/ 2;

  }

  return result;
    
}


void main() {

print(addBinary("1010", "1011"));


}