package com.lzd.service;

import com.lzd.pojo.Center;

import java.util.List;

public interface CenterService {
    List<Center> query(String p,String c);
}
