package com.lzd.mapper;

import com.lzd.pojo.Car;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CarMapper {
    List<Car> queryCar();

    List<Car> queryByBrand(@Param("word") String word);

    List<Car> queryByNum(@Param("word") String word);

    List<Car> queryByType(@Param("word") String word);

    int add(Car car);

    int delete(@Param("id") Integer id);

    Car queryById(@Param("id") Integer id);

    int update(Car car);

    Car queryi(@Param("i") int i);

    List<Car> queryNew();


}
