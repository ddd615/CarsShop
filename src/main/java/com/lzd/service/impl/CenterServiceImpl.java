package com.lzd.service.impl;

import com.lzd.mapper.CenterMapper;
import com.lzd.pojo.Center;
import com.lzd.service.CenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("centerService")
public class CenterServiceImpl implements CenterService {
    @Autowired
    private CenterMapper centerMapper;

    @Override
    public List<Center> query(String p, String c) {
        return centerMapper.query(p,c);
    }
}
