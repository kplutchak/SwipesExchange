package com.example.swipesexchange;

import java.util.ArrayList;
import java.util.List;

import android.os.Bundle;
import android.app.Activity;
import android.app.ListActivity;
import android.view.Menu;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;

//This is the first activity, so MainActivity would be like int main. It might not be the best practice to actually start the buyers list here, this may change soon.

public class MainActivity extends ListActivity {

	     @Override
	     protected void onCreate(Bundle savedInstanceState){
	         super.onCreate(savedInstanceState);

	         //activity_main contains a listview
	         setContentView(R.layout.activity_main);

	         // create a listview
	         // SimpleListAdapter is designed for binding to a Cursor.
	         final ListView listview = (ListView) findViewById(android.R.id.list);
	         
	         /************ POPULATING LIST WITH DATA ***********/
	         
	         //Sample data to populate the list. Dynamically done in the future. 
	         String[] values = new String[] { "De Neve", "Covel", "De Neve",
	             "Feast", "De Neve", "Covel", "De Neve",
	             "Feast", "De Neve", "Covel", "De Neve",
	             "Feast" };
	         
	         String[] line2 = new String[] { "Multiple at $5", "Multiple at $5", "One at $4", "Multiple at $5", "Multiple at $4", "One at $3, Multiple at $5", "One at $4", "Multiple at $5", "Multiple at $4", "One at $3, Multiple at $5" };
	         
	         String[] line3 = new String[] { "Now until 7:30PM", "Multiple at $5", "Now until 7:00PM", "Now until 7:15PM", "Now until 8:00PM", "Now until 9:00PM, Now until 7:30PM", "Now until 7:00PM", "Now until 7:15PM", "Now until 8:00PM", "Now until 9:00PM", "Now Until 9:00PM"};
	         //I'll revisit how the data should be packaged once the backend API is ready. For now, this is not the best practice. 
	         //Maybe I will change the values argument in MyArrayAdapter to be an array of array of strings, rather than an array of strings. 
	         //Or I could parse the data at MyArrayAdapter, who knows? Or use a set?
	         
	         final List<String> list = new ArrayList<String>();
	         for (int i = 0; i < values.length; ++i) {
	           list.add(values[i]);
	           }
	         
	         
	         /************ ************************* ***********/
	         
	         //Create an adapter for the list. The adapter is the middle-man class between the data and the list. This is how we populate the list. 
	         //See http://developer.android.com/guide/topics/ui/declaring-layout.html
	          final MyArrayAdapter adapter = new MyArrayAdapter(this, values, line2, line3);
	          listview.setAdapter(adapter);
	         // Bind to our new adapter.
	         setListAdapter(adapter);
	     }
	 }
	 