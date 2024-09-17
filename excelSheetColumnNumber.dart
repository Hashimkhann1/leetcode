

int titleToNumber(String columnTitle) {

  int columnNumber = 0;

  for(int i = 0; i < columnTitle.length; i++){
    
    int charValue = columnTitle.codeUnitAt(i) - "A".codeUnitAt(0) + 1;
    print(charValue);
    columnNumber = columnNumber * 26 + charValue;
    print(columnNumber);
  }

  return columnNumber;

}


void main() {

titleToNumber("ZY");

}