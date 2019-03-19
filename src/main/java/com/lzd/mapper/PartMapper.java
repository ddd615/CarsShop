package com.lzd.mapper;

import com.lzd.pojo.Part;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PartMapper {
    List<Part> queryAll();

    List<Part> queryByName(@Param("word") String word);

    List<Part> queryByNum(@Param("word")String word);

    List<Part> queryByType(@Param("word")String word);

    boolean add(Part part);

    Part queryById(@Param("id") Integer id);

    int update(Part part);

    int delete(@Param("id") Integer id);
}
