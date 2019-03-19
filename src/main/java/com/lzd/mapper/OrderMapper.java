package com.lzd.mapper;

import com.lzd.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapper {
    List<Order> queryOrder();

    List<Order> queryById(@Param("word") String word);

    List<Order> queryByName(@Param("word")String word);

    List<Order> queryByLinkman(@Param("word") String word);

    Order queryById1(@Param("id")Integer id);

    int delete(@Param("id") Integer id);

    int deal(@Param("id") Integer id);

    int add(Order order);
}
