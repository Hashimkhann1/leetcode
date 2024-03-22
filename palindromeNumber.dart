

void main() {

  int x = 1000021;

  String reversedNumber = x.toString().split('').reversed.join();
  if(reversedNumber == x.toString()){
    print("T");
  }else{
    print("F");
  }

  /////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////
  // in below code i solve the question which pass all the testcases but 
  //fail the submission and this happen because of misunderstanding of question
  /////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////

  // // here i conmvert the x into string to get the first and last digit of x
  // String convertToString = x.toString();
  // // here i'm compiring the first and last digit of x
  // if(convertToString.substring(0,1) == convertToString.substring(convertToString.length -1)){
  //   print("true");
  // }else{
  //   print("false");
  // }
  


}