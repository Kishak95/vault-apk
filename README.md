# VaultApp (Android)

This repo wraps your existing **VaultApp** web app (PWA) into a native Android app using a `WebView`.

## Requirements
- Android Studio (Giraffe+ recommended)
- Android SDK 34 installed (compileSdk=34)
- Target: Android 13 (targetSdk=33)

## Run
Open the project folder in Android Studio and press **Run**.

## Where the web app lives
`app/src/main/assets/` contains:
- `index.html`
- `manifest.json`
- `sw.js`

The app serves these assets through AndroidX `WebViewAssetLoader` at:

`https://appassets.androidplatform.net/assets/index.html`

That keeps the page in a **secure context**, so `navigator.clipboard` works and the service worker can register.

## Gradle wrapper note
This repo includes `gradlew` scripts and `gradle-wrapper.properties`, but the `gradle-wrapper.jar` is not included here. Android Studio will recreate it automatically when you open/sync the project, or you can run `gradle wrapper` if you have Gradle installed.


## Offline
This app loads web content from bundled assets via WebViewAssetLoader, so it works fully offline. Internet permission is intentionally omitted.
