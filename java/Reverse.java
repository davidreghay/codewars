public class Reverse {

    public String reverse(String str) {
        if(str.length() <= 1) {
            return str;
        }
        String result = "" + str.charAt(str.length() - 1);
        return result + reverse(str.substring(0, str.length() - 1));
    }
}
