package com.example.aroche.proyecto1_edd;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.Menu;
import android.view.MenuItem;
import android.content.Intent;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.menu_extern, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        Intent layout = new Intent();
        switch (item.getItemId()){
            case R.id.login:
                layout.setClass(MainActivity.this,MainActivity.class);
                startActivity(layout);
                finish();
                return true;
            case R.id.registrar:
                layout.setClass(MainActivity.this,Registrar.class);
                startActivity(layout);
                finish();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}
