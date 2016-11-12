package com.splashscreen.splashscreen2;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class SplashActivity extends Activity {

    // How long it'll be in milliseconds
    private final int WAIT_TIME = 1000;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);

        // In this one, we'll need to use an anoyomous class for Handler
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                // here we can create our intent
                Intent intent = new Intent(SplashActivity.this, MainActivity.class);
                SplashActivity.this.startActivity(intent);
                // we destroy the splash activity, as we don't need it anymore
                SplashActivity.this.finish();
            }
        }, WAIT_TIME);
    }
}
