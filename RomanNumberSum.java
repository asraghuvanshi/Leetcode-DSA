class RomanNumberSum{

    /**
     * @param s
     * @return
     */
    public int romanToInt(String s) {
        // IVXDMCL
        int total = 0;
        int romanNumber[] = new int[s.length()];
        char romanString[] = s.toCharArray();
            for(int i = 0; i < s.length(); i++){
                switch (romanString[i]){
                    case 'I':
                        romanNumber[i] = 1;
                        break;
                    case 'V':
                        romanNumber[i] = 5;
                        break;
                    case 'X':
                        romanNumber[i] = 10;
                        break;
                    case 'L':
                        romanNumber[i] = 50;
                        break;
                    case 'C':
                        romanNumber[i] = 100;
                        break;
                    case 'D':
                        romanNumber[i] = 500;
                        break;
                    case 'M':
                        romanNumber[i] = 1000;
                        break;

            }

        }
        for(int j = 0; j < romanNumber.length; j++){
            total += romanNumber[j];
        }
        return total;
    }
    public static void main(String args[]) {
        String roman = "IVIX";
        RomanNumberSum leetcodeRoman = new RomanNumberSum();
        leetcodeRoman.romanToInt(roman);
        System.out.println(leetcodeRoman.romanToInt(roman));
    }
}
