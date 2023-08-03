package com.example.retrotest;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.GET;

public interface ApiInterface {


    @GET("demos/marvel/")
    Call<List<BaseModel>> getAllData();

}
