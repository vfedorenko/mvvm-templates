android {
    dataBinding {
        enabled = true
    }
}

apply from: "$rootDir/versions.gradle"
apply plugin: 'kotlin-kapt'

dependencies {
    implementation "com.android.support:appcompat-v7:$support_version" 

    ${"// DataBinding"}
    kapt "com.android.databinding:compiler:$gradle_version"

    // dagger 2
    provided "com.google.dagger:dagger:$dagger_version"
    kapt "com.google.dagger:dagger-compiler:$dagger_version"

    // dagger.android
    implementation "com.google.dagger:dagger-android:$dagger_version"
    kapt "com.google.dagger:dagger-android-processor:$dagger_version"

    // Routing
    implementation "ru.terrakok.cicerone:cicerone:$cicerone_version"
}
