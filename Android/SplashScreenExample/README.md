# Splash Screen
In this Splash Screen example, the timer/delay is based on how fast android launches your main activity. For a splash screen example that is based on a Timer, I can provide one soon.
The key differences would be in that one there would be a layout file, followed by a Thread class to run in the background.

## Step-by-Step Guide

### Step 1:

Create an XML drawable file in res/drawable (We will not be using a layout file, however something different). Call it whatever you like. Put this in:

```XML
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">

    <item
        android:drawable="@color/gray"/>

    <item>
        <bitmap
            android:gravity="center"
            android:src="@mipmap/ic_launcher"/>
    </item>

</layer-list>
```

You can think of a layer list like in Photoshop.

### Step 2:

In your styles.xml file, add this in:

```XML
<resources>
    <style name="SplashTheme" parent="Theme.AppCompat.NoActionBar">
        <item name="android:windowBackground">@drawable/your_file_name_above</item>
    </style>
</resources>
```

### Step 3:

Next, we'll want to edit our manifest, but we can make it easier on ourselves first by creating an activity. We'll create an activity called SplashActivity or whatever name you prefer.
All this Splash Activity will do is in the oncreate, it'll have nothing but an intent launching the MainActivity, followed by destroying its activity after.

SplashActivity:
```Java
public class SplashActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        Intent intent = new Intent(this, MainActivity.class);
        startActivity(intent);
        finish();
    }
}
```

### Step 4:

Finally, we'll want to edit our AndroidManifest.xml file. We'll want to launch the SplashActivity first, which in turn will launch the MainActivity right after.

```XML
    <application
        android:icon="@mipmap/ic_launcher"
        android:label="@string/app_name"
        android:theme="@style/AppTheme">
        <activity
            android:name=".SplashActivity"
            android:label="@string/app_name"
            android:theme="@style/SplashTheme">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />

                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
        <activity android:name=".MainActivity" />
    </application>
```

--

This is one way of having a splash screen. This way is Google recommended, as they use a splash screen to load if the content behind is going to take some time.
For a splash screen with a delayed timer, it'll come soon!
