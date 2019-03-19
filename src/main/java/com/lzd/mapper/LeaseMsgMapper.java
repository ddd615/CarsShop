package com.lzd.mapper;

import com.lzd.pojo.LeaseMsg;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LeaseMsgMapper {
    List<LeaseMsg> queryAll();

    LeaseMsg queryById(@Param("id")Integer id);

    int update(@Param("id") Integer id);

    int delete(@Param("id") Integer id);

    int add(LeaseMsg leaseMsg);
}
