package com.example;

import android.*;
import android.R;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.provider.MediaStore;
import android.widget.ArrayAdapter;

import java.util.ArrayList;

public class SoundAdapter extends ArrayAdapter<String> {
    private ArrayList<Long> mMusicIds = new ArrayList<Long>();

    public SoundAdapter(Context context) {
        super(context, R.layout.simple_list_item_1);

        ContentResolver resolver = context.getContentResolver();
        Cursor cursor = resolver.query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI,
                null, null, null, null);
        while (cursor.moveToNext()) {
            String name = cursor.getString(cursor.getColumnIndex(MediaStore.Audio.Media.TITLE));
            long id = cursor.getLong(cursor.getColumnIndex(MediaStore.Audio.Media._ID));
            mMusicIds.add(id);
            this.add(name);
        }
    }

    public long getItemId(int position) {
        return mMusicIds.get(position);
    }
}
