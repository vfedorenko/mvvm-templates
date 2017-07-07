package ${packageName}

import android.app.Activity
import android.content.Intent
import android.os.Bundle


inline fun <reified T: Activity> Activity.startActivity(bundle: Bundle) {
    val intent = Intent(this, T::class.java)
    intent.putExtras(bundle)
    startActivity(intent)
}
