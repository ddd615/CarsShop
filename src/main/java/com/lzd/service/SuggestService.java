package com.lzd.service;

import com.lzd.pojo.Suggest;

import java.util.List;

public interface SuggestService {
    List<Suggest> queryAll();

    boolean update(Integer id);

    boolean delete(Integer id);

    boolean add(Suggest suggest);
}
