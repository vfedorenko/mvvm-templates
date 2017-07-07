package ${packageName}.presentation

import android.os.Bundle
import android.widget.Toast
import ru.terrakok.cicerone.Navigator
import ru.terrakok.cicerone.commands.*
import java.lang.UnsupportedOperationException


class ActivityNavigator(private val activity: BaseActivity) : Navigator {

    companion object {
        // const val ACTIVITY_LOGIN = "ACTIVITY_LOGIN"
    }

    override fun applyCommand(command: Command) = when (command) {
        is Replace -> {
            startActivity(command.screenKey, command.transitionData as? Bundle ?: Bundle())
            activity.finish()
        }
        is Forward -> startActivity(command.screenKey, command.transitionData as? Bundle ?: Bundle())
        is Back -> activity.finish()
        is SystemMessage -> Toast.makeText(activity, command.message, Toast.LENGTH_LONG).show()
        else -> throw UnsupportedOperationException("$command is not supported")
    }

    private fun startActivity(screenKey: String, extras: Bundle)  {
        when (screenKey) {
            // ACTIVITY_LOGIN -> activity.startActivity<LoginActivity>(extras)
            else -> throw UnsupportedOperationException("$screenKey is not supported")
        }
    }
}
