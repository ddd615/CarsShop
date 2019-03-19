package com.lzd.service.impl;

import com.lzd.mapper.ReplaceMapper;
import com.lzd.pojo.Replace;
import com.lzd.service.ReplaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("replaceService")
public class ReplaceServiceImpl implements ReplaceService {
    @Autowired
    private ReplaceMapper replaceMapper;

    @Override
    public List<Replace> queryAll() {
        return replaceMapper.queryAll();
    }

    @Override
    public Replace queryById(Integer id) {
        return replaceMapper.queryById(id);
    }

    @Override
    public boolean update(Integer id) {
        int row=replaceMapper.update(id);
        return row==1?true:false;
    }

    @Override
    public boolean add(Replace replace) {
        int row=replaceMapper.add(replace);
        return row==1?true:false;
    }

    @Override
    public boolean delete(Integer id) {
        int row=replaceMapper.delete(id);
        return row==1?true:false;
    }

    @Override
    public List<Replace> queryByName(String linkman) {
        return replaceMapper.queryByName(linkman);
    }
}
