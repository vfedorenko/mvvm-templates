class ActivityNavigator(private val activity: BaseActivity) : Navigator {

    companion object {
        const val ACTIVITY_${className?upper_case} = "ACTIVITY_${className?upper_case}"
    }
    
    private fun startActivity(screenKey: String, extras: Bundle)  {
        when (screenKey) {
            ACTIVITY_${className?upper_case} -> activity.startActivity<${className}Activity>(extras)
        }
    }
}
