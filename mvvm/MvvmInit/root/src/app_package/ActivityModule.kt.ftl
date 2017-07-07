package ${packageName}.businesslogic.di.modules

import ${packageName}.presentation.BaseActivity
import dagger.Module
import dagger.android.ContributesAndroidInjector


@Module
abstract class ActivityModule {
    @ActivityScope
    @ContributesAndroidInjector
    abstract fun provideBaseActivity(): BaseActivity
}
