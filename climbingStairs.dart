

int climbStairs(int n) {

  if (n == 1) return 1;

  List<int> dp = List.filled(n + 1, 0);
  dp[1] = 1;
  dp[2] = 2;

  for(int i = 3; i <= n; i++){
    print(i);
    dp[i] = dp[i - 1] + dp[i - 2];
  }

  return dp[n];

  // int step1=1;
  //   int step2=1;
  //   for(int i =0;i<n-1;i++){
  //     print(i);
  //       int temp=step1;
  //       step1=step1+step2;
  //       step2=temp;
  //   }

  //   return step1;
    
}




void main() {

  print("function print " + climbStairs(3).toString());


}