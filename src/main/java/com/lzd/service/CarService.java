package com.lzd.service;

import com.lzd.pojo.Car;

import java.util.List;

public interface CarService {

    List<Car> queryCar();

    List<Car> queryByBrand(String word);

    List<Car> queryByNum(String word);

    List<Car> queryByType(String word);

    boolean add(Car car);

    boolean delete(Integer id);

    Car queryById(Integer id);

    boolean update(Car car);



    Car queryi(int i);


    List<Car> queryNew();


}
