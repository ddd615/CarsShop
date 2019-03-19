package com.lzd.service;

import com.lzd.pojo.Order;

import java.util.List;

public interface OrderService {
    List<Order> queryOrder();

    List<Order> queryById(String word);

    List<Order> queryByName(String word);

    List<Order> queryByLinkman(String word);

    Order queryById1(Integer id);

    boolean delete(Integer id);

    boolean deal(Integer id);

    boolean add(Order order);
}
