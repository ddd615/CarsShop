package com.lzd.mapper;

import com.lzd.pojo.Suggest;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SuggestMapper {
    List<Suggest> queryAll();

    int update(@Param("id") Integer id);

    int delete(@Param("id") Integer id);

    int add(Suggest suggest);
}
