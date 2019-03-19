package com.lzd.mapper;

import com.lzd.pojo.LeaseCar;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LeaseCarMapper {
    List<LeaseCar> queryAll();

    int add(LeaseCar leaseCar);

    int delete(@Param("id") Integer id);

    LeaseCar queryById(@Param("id") Integer id);

    int update(LeaseCar leaseCar);
}
