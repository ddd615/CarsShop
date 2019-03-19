package com.lzd.service;

import com.lzd.pojo.LeaseMsg;

import java.util.List;

public interface LeaseMsgService {
    List<LeaseMsg> queryAll();

    LeaseMsg queryById(Integer id);

    boolean update(Integer id);

    boolean delete(Integer id);

    boolean add(LeaseMsg leaseMsg);
}
