package {{package}}

import android.annotation.SuppressLint
import android.util.Log


class Utils {
    @SuppressLint("LongLogTag")
    fun log(message: String?) {
        Log.d(TAG, message!!)
    }


    companion object {
        private const val TAG = "[{{name.pascalCase()}}-Android]"

        // Learn more ASCII: https://www.cs.cmu.edu/~pattis/15-1XX/common/handouts/ascii.html
        fun convertAsciiToString(asciiValues: IntArray): String {
            val sb = StringBuilder()
            for (value in asciiValues) {
                sb.append(value.toChar())
            }
            return sb.toString()
        }
    }
}
