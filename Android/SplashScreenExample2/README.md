# Splash Screen Example 2
This one is time based, example is almost identical as the first one but we're using a Holder class, and a layout file instead.

## Step-by-Step Guide:

### Step 1:

Create a Splash Activity and edit your class like this:

```Java
public class Splash extends Activity {

    // how long in milli seconds so 1 second here 
    private final int WAIT_TIME = 1000;


    @Override
    public void onCreate(Bundle onSavedInstanceState) {
        super.onCreate(onSavedInstanceState);
        setContentView(R.layout.activity_splash);

        /* New Handler to start the Menu-Activity 
         * and close this Splash-Screen after some seconds.*/
        new Handler().postDelayed(new Runnable(){
            @Override
            public void run() {
                /* Create an Intent that will start the Menu-Activity. */
                Intent mainIntent = new Intent(Splash.this,Menu.class);
                Splash.this.startActivity(mainIntent);
                Splash.this.finish();
            }
        }, WAIT_TIME);
    }
}
```

### Step 2:
Edit your splash layout file (activity_splash, if you generated a layout file). Here you may edit it to your liking.

### Step 3:
Edit your manifest file so that it loads your SplashActivity.

Here is what the manifest might look like:

```XML
<?xml version="1.0" encoding="utf-8"?>
 <manifest xmlns:android="http://schemas.android.com/apk/res/android"
     package="com.splashscreen.splashscreen2">
 
     <application
         android:allowBackup="true"
         android:icon="@mipmap/ic_launcher"
         android:label="@string/app_name"
         android:supportsRtl="true"
         android:theme="@style/AppTheme">
         <activity android:name=".SplashActivity"
             android:theme="@android:style/Theme.NoTitleBar">
             <intent-filter>
                 <action android:name="android.intent.action.MAIN" />
 
                 <category android:name="android.intent.category.LAUNCHER" />
             </intent-filter>
         </activity>
         <activity android:name=".MainActivity" />
     </application>
 
 </manifest> 
```
