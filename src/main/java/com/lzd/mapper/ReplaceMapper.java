package com.lzd.mapper;

import com.lzd.pojo.Replace;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReplaceMapper {

    List<Replace> queryAll();

    Replace queryById(@Param("id") Integer id);

    int update(@Param("id") Integer id);

    int add(Replace replace);

    int delete(@Param("id") Integer id);

    List<Replace> queryByName(@Param("linkman") String linkman);
}
