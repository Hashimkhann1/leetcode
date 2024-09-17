
int mySqrt(int x) {

  int left = 0;
  int right = x;

  while(left <= right){

    int mid = ((left + right) / 2).floor();
    print(mid);

    if(mid * mid == x) return mid;

    if(mid * mid > x){
      right = mid - 1;
    }else{
      left = mid + 1;
    }
  }

  return right;
    
}

void main() {


  // print();
  mySqrt(8);

}