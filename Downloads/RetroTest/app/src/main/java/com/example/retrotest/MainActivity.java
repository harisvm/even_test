package com.example.retrotest;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.github.florent37.expansionpanel.ExpansionLayout;
import com.github.florent37.expansionpanel.viewgroup.ExpansionLayoutCollection;
import com.google.android.material.textfield.TextInputEditText;

import java.util.ArrayList;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class MainActivity extends AppCompatActivity {
    @BindView(R.id.recycler)
    RecyclerView recyclerView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ButterKnife.bind(this);


        getRetrofitData(MainActivity.this);


    }


    public final static class RecyclerAdapter extends RecyclerView.Adapter<RecyclerAdapter.RecyclerHolder> {
        Context context;

        private final ExpansionLayoutCollection expansionsCollection = new ExpansionLayoutCollection();
        private final List<BaseModel> list = new ArrayList<>();

        public RecyclerAdapter(Context context) {
            expansionsCollection.openOnlyOne(true);
            this.context = context;
        }

        @Override
        public RecyclerAdapter.RecyclerHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            return RecyclerAdapter.RecyclerHolder.buildFor(parent);
        }


        @Override
        public void onBindViewHolder(RecyclerAdapter.RecyclerHolder holder, int position) {
            holder.bind(list.get(position));


            holder.title.setText(list.get(position).getName());
            expansionsCollection.add(holder.getExpansionLayout());


        }

        @Override
        public int getItemCount() {
            return list.size();
        }

        public void setItems(List<BaseModel> items) {
            this.list.addAll(items);
            notifyDataSetChanged();
        }

        public final static class RecyclerHolder extends RecyclerView.ViewHolder {

            private static final int LAYOUT = R.layout.expansion_cell;

            public static RecyclerAdapter.RecyclerHolder buildFor(ViewGroup viewGroup) {
                return new RecyclerAdapter.RecyclerHolder(LayoutInflater.from(viewGroup.getContext()).inflate(LAYOUT, viewGroup, false));
            }

            ExpansionLayout expansionLayout;
            TextView title;


            public RecyclerHolder(View itemView) {
                super(itemView);
                expansionLayout = itemView.findViewById(R.id.expansionLayout);

                title = itemView.findViewById(R.id.title_exp);


            }

            public void bind(Object object) {
                expansionLayout.collapse(false);
            }

            public ExpansionLayout getExpansionLayout() {
                return expansionLayout;
            }
        }
    }


    public void getRetrofitData(Context context) {
        ApiInterface retroInterface = RetrofitBuilder.getRetrofitInstance().create(ApiInterface.class);
        ProgressDialog mDialog = new ProgressDialog(context);
        mDialog.setMessage("Please Wait");
        mDialog.show();

        Call<List<BaseModel>> call = retroInterface.getAllData();

        call.enqueue(new Callback<List<BaseModel>>() {
            @Override
            public void onResponse(Call<List<BaseModel>> call, Response<List<BaseModel>> response) {

                RecyclerAdapter adapter = new RecyclerAdapter(MainActivity.this);
                List<BaseModel> baseModels = response.body();
                adapter.setItems(baseModels);

                recyclerView.setLayoutManager(new LinearLayoutManager(context));
                recyclerView.setAdapter(adapter);

                if (mDialog.isShowing()) {

                    mDialog.dismiss();
                }


            }

            @Override
            public void onFailure(Call<List<BaseModel>> call, Throwable t) {


                if (mDialog.isShowing()) {

                    mDialog.dismiss();
                }

            }
        });

    }
}
