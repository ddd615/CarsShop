package com.lzd.service;

import com.lzd.pojo.Part;

import java.util.List;

public interface PartService {
    List<Part> queryAll();

    List<Part> queryByName(String word);

    List<Part> queryByNum(String word);

    List<Part> queryByType(String word);

    boolean add(Part part);

    Part queryById(Integer id);

    boolean update(Part part);

    boolean delete(Integer id);
}
