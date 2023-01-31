import java.util.Arrays;
import java.util.List;

class LongestCommon1{


    /**
     * @param str
     * @return
     */
    public  String longestCommonPrefix(List<String>str){
        String prefix = str.get(0);
        System.out.println(prefix);
        if (str.isEmpty()){
             return "";
        }
        for(int i = 1; i<str.size();i++){
            while(str.get(i).indexOf(prefix)!= 0){
                prefix = prefix.substring(0 , prefix.length() - 1);
                if (prefix.isEmpty()){
                    return "";
                }
            }
        }
        return prefix;
    }
    public static void main(String[] args) {
        List<String> list = List.of("Python" , "Pytho", "Pyth" , "Py");
        LongestCommon obj = new LongestCommon();
        obj.longestCommonPrefix(list);

    }
}
