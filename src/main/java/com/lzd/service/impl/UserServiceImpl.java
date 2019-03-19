package com.lzd.service.impl;

import com.lzd.mapper.UserMapper;
import com.lzd.pojo.User;
import com.lzd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;


    @Override
    public User login(String name, String password) {
        return userMapper.login(name,password);
    }
}
