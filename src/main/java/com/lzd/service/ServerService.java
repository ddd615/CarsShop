package com.lzd.service;

import com.lzd.pojo.Server;

import java.util.List;

public interface ServerService {
    List<Server> query(String p, String c);
}
