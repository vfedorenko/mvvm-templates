package ${packageName}

<#if applicationPackage??>
import ${applicationPackage}.businesslogic.di.ActivityScope
</#if>
import javax.inject.Inject

@ActivityScope
class ${className}ViewModel
@Inject
constructor() {

}
