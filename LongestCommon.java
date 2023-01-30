import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class LongestCommon {
    public static void main(String[] args) {
//        List.of();

        int i = 0 , j = 0 ;
        List<String> arraylist = Arrays.asList("python" , "tytho" , "pyth" , "py" , "p");
        String prefix = arraylist.get(0);

        for(String str : arraylist) {
            while(i< prefix.length() && j<str.length()){
                if(arraylist.get(0).charAt(i) != str.charAt(j)){
                    System.out.println(i+" - "+j);

                    break;
                }
                i++; 
                j++;
               
            }
        }
        System.out.print(prefix.substring(0, i));
    }
}
