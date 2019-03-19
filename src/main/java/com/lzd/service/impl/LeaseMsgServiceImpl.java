package com.lzd.service.impl;

import com.lzd.mapper.LeaseMsgMapper;
import com.lzd.pojo.LeaseMsg;
import com.lzd.service.LeaseMsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("leaseMsgService")
public class LeaseMsgServiceImpl implements LeaseMsgService {
    @Autowired
    private LeaseMsgMapper leaseMsgMapper;

    @Override
    public List<LeaseMsg> queryAll() {
        return leaseMsgMapper.queryAll();
    }

    @Override
    public LeaseMsg queryById(Integer id) {
        return leaseMsgMapper.queryById(id);
    }

    @Override
    public boolean update(Integer id) {
        int row=leaseMsgMapper.update(id);
        return row==1?true:false;
    }

    @Override
    public boolean delete(Integer id) {
        int row=leaseMsgMapper.delete(id);
        return row==1?true:false;
    }

    @Override
    public boolean add(LeaseMsg leaseMsg) {
        int row=leaseMsgMapper.add(leaseMsg);
        return row==1?true:false;
    }
}
