<?xml version="1.0"?>
<recipe>
	  <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="root/res/layout/mvvm_activity.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="root/src/app_package/MvvmActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Activity.kt" />
    <instantiate from="root/src/app_package/ViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}ViewModel.kt" />

<!--     <merge from="root/src/app_package/ActivityModule.kt.ftl"
           to="${escapeXmlAttribute(srcOut)}/businesslogic/di/modules/ActivityModule.kt" />

    <merge from="root/src/app_package/ActivityNavigator.kt.ftl"
           to="${escapeXmlAttribute(srcOut)}/presentation/ActivityNavigator.kt" />
 -->
    <open file="${srcOut}/${className}ViewModel.kt"/>
    <open file="${resOut}/${layoutName}.xml"/>
</recipe>
