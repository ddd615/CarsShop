package com.lzd.mapper;

import com.lzd.pojo.Center;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CenterMapper {
    List<Center> query(@Param("provide") String p, @Param("city") String c);
}
