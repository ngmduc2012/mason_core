package {{package}};

import android.util.Log;

public class Utils {

    private static final String TAG = "[{{name.pascalCase()}}-Android]";

    void log(String message )
    {
        Log.d(TAG, message);
    }


    // Learn more ASCII: https://www.cs.cmu.edu/~pattis/15-1XX/common/handouts/ascii.html
     static String convertAsciiToString(int[] asciiValues) {
        StringBuilder sb = new StringBuilder();
        for (int value : asciiValues) {
            sb.append((char) value);
        }
        return sb.toString();
    }
}
