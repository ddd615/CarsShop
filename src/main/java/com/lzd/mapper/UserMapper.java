package com.lzd.mapper;

import com.lzd.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface UserMapper {


    User login(@Param("name") String name, @Param("password") String password);
}
