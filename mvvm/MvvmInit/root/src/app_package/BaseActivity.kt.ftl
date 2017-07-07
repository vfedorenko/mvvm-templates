package ${packageName}.presentation

import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import android.support.v7.widget.Toolbar
import android.view.MenuItem
import dagger.android.AndroidInjection
import ru.terrakok.cicerone.Navigator
import ru.terrakok.cicerone.NavigatorHolder
import javax.inject.Inject


abstract class BaseActivity : AppCompatActivity() {

    @Inject
    lateinit var navigationHolder: NavigatorHolder

    override fun onCreate(savedInstanceState: Bundle?) {
        AndroidInjection.inject(this)
        super.onCreate(savedInstanceState)
    }

    protected fun setupToolbar(toolbar: Toolbar?, clearDefaultTitle: Boolean = false, showHomeAsBack: Boolean = false) {
        setSupportActionBar(toolbar)

        supportActionBar?.setDisplayHomeAsUpEnabled(showHomeAsBack)

        if (clearDefaultTitle) {
            supportActionBar?.title = App.EMPTY_STRING
        }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean = when (item.itemId) {
        android.R.id.home -> {
            finish()
            true
        }
        else -> super.onOptionsItemSelected(item)
    }

    override fun onResume() {
        super.onResume()
        navigationHolder.setNavigator(getNavigator())
    }

    override fun onPause() {
        navigationHolder.removeNavigator()
        super.onPause()
    }

    abstract fun getNavigator(): Navigator
}
