package ${packageName}

import android.databinding.DataBindingUtil
import android.os.Bundle
<#if applicationPackage??>
import ${applicationPackage}.R
import ${applicationPackage}.databinding.Activity${className}Binding
import ${applicationPackage}.presentation.ActivityNavigator
import ${applicationPackage}.presentation.BaseActivity
</#if>
import dagger.android.AndroidInjection
import javax.inject.Inject


class ${className}Activity : BaseActivity() {

    @Inject
    lateinit var viewModel:  ${className}ViewModel

    override fun onCreate(savedInstanceState: Bundle?) {
        AndroidInjection.inject(this)
        super.onCreate(savedInstanceState)

        val binding = DataBindingUtil.setContentView<Activity${className}Binding>(this, R.layout.${layoutName})
        binding.viewModel = viewModel

        setupToolbar(binding.toolbar)
    }

    override fun getNavigator() = ActivityNavigator(this)
}
