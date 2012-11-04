package com.example;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

import com.example.SoundAdapter;
import org.apache.commons.logging.Log;

public class SoundPlayerList extends Activity {
    public final static int PLAY_MUSIC = 0;
    private ListView mListView;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        int main = R.layout.main;
        setContentView(main);

        mListView = (ListView) findViewById(R.id.listView1);

        SoundAdapter soundAdapter = new SoundAdapter(this);
        mListView.setAdapter(soundAdapter);
        mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                ListView listView = (ListView) parent;
                String item = (String) listView.getItemAtPosition(position);
                Intent intent = new Intent(SoundPlayerList.this, SoundPlayerActivity.class);
            }
        });
    }
}
