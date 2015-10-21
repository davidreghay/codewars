import java.util.*;

public class CompoundArray {
        
    public static int[] compoundArray(int[] a, int[] b){
        int[] c = new int[a.length + b.length];
        int acount = 0;
        int bcount = 0;
        for(int i = 0; i < c.length; i++) {
            System.out.println(Arrays.toString(c));
            if(acount >= a.length) {
                c[i] = b[bcount++];
            } else if (bcount >= b.length) {
                c[i] = a[acount++];
            } else {
                c[i] = (i % 2 == 0) ? a[acount++] : b[bcount++];
            }
         }
         System.out.println(Arrays.toString(c));
         return c;
    }
}
