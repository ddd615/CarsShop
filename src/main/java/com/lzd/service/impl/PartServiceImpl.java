package com.lzd.service.impl;

import com.lzd.mapper.PartMapper;
import com.lzd.pojo.Part;
import com.lzd.service.PartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("partService")
public class PartServiceImpl implements PartService {
    @Autowired
    private PartMapper partMapper;

    @Override
    public List<Part> queryAll() {
        return partMapper.queryAll();
    }

    @Override
    public List<Part> queryByName(String word) {
        return partMapper.queryByName(word);
    }

    @Override
    public List<Part> queryByNum(String word) {
        return partMapper.queryByNum(word);
    }

    @Override
    public List<Part> queryByType(String word) {
        return partMapper.queryByType(word);
    }

    @Override
    public boolean add(Part part) {
        return partMapper.add(part);
    }

    @Override
    public Part queryById(Integer id) {
        return partMapper.queryById(id);
    }

    @Override
    public boolean update(Part part) {
        int row=partMapper.update(part);
        return row==1?true:false;
    }

    @Override
    public boolean delete(Integer id) {
        int row=partMapper.delete(id);
        return row==1?true:false;
    }
}
