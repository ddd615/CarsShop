package com.lzd.service;

import com.lzd.pojo.LeaseCar;

import java.util.List;

public interface LeaseCarService {
    List<LeaseCar> queryAll();

    boolean add(LeaseCar leaseCar);

    boolean delete(Integer id);

    LeaseCar queryById(Integer id);

    boolean update(LeaseCar leaseCar);
}
