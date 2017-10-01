package com.example.aroche.proyecto1_edd;

/**
 * Created by Aroche on 28/09/2017.
 */

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.content.Intent;

public class Registrar extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        setContentView(R.layout.activiy_registrar);
        super.onCreate(savedInstanceState);
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
                layout.setClass(Registrar.this,MainActivity.class);
                startActivity(layout);
                finish();
                return true;
            case R.id.registrar:
                layout.setClass(Registrar.this,Registrar.class);
                startActivity(layout);
                finish();
                return true;
            default:
                return false;//super.onOptionsItemSelected(item);
        }
    }
}
