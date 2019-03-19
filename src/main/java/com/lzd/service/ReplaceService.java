package com.lzd.service;

import com.lzd.pojo.Replace;

import java.util.List;

public interface ReplaceService {

    List<Replace> queryAll();

    Replace queryById(Integer id);

    boolean update(Integer id);

    boolean add(Replace replace);

    boolean delete(Integer id);

    List<Replace> queryByName(String linkman);
}
