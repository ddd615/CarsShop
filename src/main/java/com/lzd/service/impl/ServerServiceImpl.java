package com.lzd.service.impl;

import com.lzd.mapper.ServerMapper;
import com.lzd.pojo.Server;
import com.lzd.service.ServerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("serverService")
public class ServerServiceImpl implements ServerService {
    @Autowired
    private ServerMapper serverMapper;

    @Override
    public List<Server> query(String p, String c) {
        return serverMapper.query(p,c);
    }
}
