package com.lzd.service.impl;

import com.github.pagehelper.PageHelper;
import com.lzd.mapper.OrderMapper;
import com.lzd.pojo.Order;
import com.lzd.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;

    @Override
    public List<Order> queryOrder(){

        return orderMapper.queryOrder();
    }

    @Override
    public List<Order> queryById(String word) {
        return orderMapper.queryById(word);
    }

    @Override
    public List<Order> queryByName(String word) {
        return orderMapper.queryByName(word);
    }

    @Override
    public List<Order> queryByLinkman(String word) {
        return orderMapper.queryByLinkman(word);
    }

    @Override
    public Order queryById1(Integer id) {
        return orderMapper.queryById1(id);
    }

    @Override
    public boolean delete(Integer id) {
        int row=orderMapper.delete(id);
        return row==1?true:false;
    }

    @Override
    public boolean deal(Integer id) {
        int row=orderMapper.deal(id);
        return row==1?true:false;
    }

    @Override
    public boolean add(Order order) {
        int row=orderMapper.add(order);
        return row==1?true:false;
    }
}
