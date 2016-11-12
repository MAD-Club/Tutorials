package com.splashscreen.splashscreen;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class SplashActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Starts an intent
        Intent intent = new Intent(this, MainActivity.class);
        startActivity(intent);
        // destroys this Activity, as it's not need anymore
        finish();
    }
}
