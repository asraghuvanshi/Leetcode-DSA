/*
 *   Problem: Easy
 *   Leetcode Longest common string 
 */
public class StringLCM {
    public String LowestCommonString(String str[]){
        String prefix = str[0];
        if (str.length == 0){
            return "";
        }
        for(int i = 1 ; i<str.length
        ; i++){
            while(str[i].indexOf(prefix)!=0){
                prefix = prefix.substring(0 , prefix.length() - 1);
                System.out.println(prefix);
                if (prefix.isEmpty()){
                    return "";
                }
            }
        }
        return prefix;
    }
    public static void main(String[] args) {
        String []str = {"Swifty" , "Swift" , "Sw"};
        StringLCM obj = new StringLCM();
        System.out.println(obj.LowestCommonString(str));
    }
}
