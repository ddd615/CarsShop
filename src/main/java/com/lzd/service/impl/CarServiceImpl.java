package com.lzd.service.impl;

import com.lzd.mapper.CarMapper;
import com.lzd.pojo.Car;
import com.lzd.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("carService")
public class CarServiceImpl implements CarService {
    @Autowired
    private CarMapper carMapper;

    @Override
    public List<Car> queryCar() {
        return carMapper.queryCar();
    }

    @Override
    public List<Car> queryByBrand(String word) {
        return carMapper.queryByBrand(word);
    }

    @Override
    public List<Car> queryByNum(String word) {
        return carMapper.queryByNum(word);
    }

    @Override
    public List<Car> queryByType(String word) {
        return carMapper.queryByType(word);
    }

    @Override
    public boolean add(Car car) {
        int row=carMapper.add(car);
        return row==1?true:false;
    }

    @Override
    public boolean delete(Integer id) {
        int row=carMapper.delete(id);
        return row==1?true:false;
    }

    @Override
    public Car queryById(Integer id) {
        return carMapper.queryById(id);
    }

    @Override
    public boolean update(Car car) {
        int row=carMapper.update(car);
        return row==1?true:false;
    }

    @Override
    public Car queryi(int i) {
        return carMapper.queryi(i);
    }

    @Override
    public List<Car> queryNew() {
        return carMapper.queryNew();
    }


}
