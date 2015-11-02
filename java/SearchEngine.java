import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class SearchEngine {
    static int find(String needle, String haystack) {
        Pattern p = Pattern.compile(needle.replaceAll("([\\.\\,\\&\\%\\[\\{\\(\\]\\}\\)\\^\\$])", "\\\\$1")
                           .replace('_', '.'));
        Matcher m = p.matcher(haystack);
        return m.find() ? m.start() : -1;
    }
}