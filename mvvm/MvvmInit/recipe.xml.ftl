<?xml version="1.0"?>
<recipe>
    <instantiate from="root/versions.gradle.ftl"
                   to="${escapeXmlAttribute(topOut)}/versions.gradle" />

    <merge from="root/build.gradle.ftl"
             to="${escapeXmlAttribute(topOut)}/app/build.gradle" />

    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="root/src/app_package/Extensions.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Extensions.kt" />

    <instantiate from="root/src/app_package/BaseActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/BaseActivity.kt" />

    <instantiate from="root/src/app_package/ActivityNavigator.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/ActivityNavigator.kt" />        

    <instantiate from="root/src/app_package/App.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/App.kt" />

    <instantiate from="root/src/app_package/ActivityScope.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/businesslogic/di/ActivityScope.kt" /> 

    <instantiate from="root/src/app_package/AppComponent.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/businesslogic/di/AppComponent.kt" /> 

    <instantiate from="root/src/app_package/ActivityModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/businesslogic/di/modules/ActivityModule.kt" /> 

    <instantiate from="root/src/app_package/NavigationModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/businesslogic/di/modules/NavigationModule.kt" /> 

</recipe>
