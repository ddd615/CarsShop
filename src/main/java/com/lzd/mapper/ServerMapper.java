package com.lzd.mapper;

import com.lzd.pojo.Server;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ServerMapper {
    List<Server> query(@Param("provide") String p, @Param("city") String c);
}
