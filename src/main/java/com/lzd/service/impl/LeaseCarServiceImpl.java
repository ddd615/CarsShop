package com.lzd.service.impl;

import com.lzd.mapper.LeaseCarMapper;
import com.lzd.pojo.LeaseCar;
import com.lzd.service.LeaseCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("leaseCarService")
public class LeaseCarServiceImpl implements LeaseCarService {
    @Autowired
    private LeaseCarMapper leaseCarMapper;

    @Override
    public List<LeaseCar> queryAll() {
        return leaseCarMapper.queryAll();
    }

    @Override
    public boolean add(LeaseCar leaseCar) {
        int row=leaseCarMapper.add(leaseCar);
        return row==1?true:false;
    }

    @Override
    public boolean delete(Integer id) {
        int row=leaseCarMapper.delete(id);
        return row==1?true:false;
    }

    @Override
    public LeaseCar queryById(Integer id) {
        return leaseCarMapper.queryById(id);
    }

    @Override
    public boolean update(LeaseCar leaseCar) {
        int row=leaseCarMapper.update(leaseCar);
        return row==1?true:false;
    }
}
