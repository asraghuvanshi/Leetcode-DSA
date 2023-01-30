class Solution {
    public boolean isPalindrome(int x) {
        int reverse = 0 , remainder;
        int number = x;
        if (x<0){
            return false;
        }
        while(x!= 0){
             reverse = reverse * 10 + x %10;
             x= x/10;
        }
        if (number == reverse){
            return true;
        }
        else{
            return false;
        }
    }

    public static void main(String args[]){
        Solution sol = new Solution();
        sol.isPalindrome(1221);
    }
}