package com.lzd.service.impl;

import com.lzd.mapper.SuggestMapper;
import com.lzd.pojo.Suggest;
import com.lzd.service.SuggestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("suggestService")
public class SuggestServiceImpl implements SuggestService {
    @Autowired
    private SuggestMapper suggestMapper;

    @Override
    public List<Suggest> queryAll() {
        return suggestMapper.queryAll();
    }

    @Override
    public boolean update(Integer id) {
        int row=suggestMapper.update(id);
        return row==1?true:false;
    }

    @Override
    public boolean delete(Integer id) {
        int row=suggestMapper.delete(id);
        return row==1?true:false;
    }

    @Override
    public boolean add(Suggest suggest) {
        int row=suggestMapper.add(suggest);
        return row==1?true:false;
    }

}
