@Module
abstract class ActivityModule {
    @ActivityScope
    @ContributesAndroidInjector
    abstract fun provide${className}Activity(): ${className}Activity
}
