package com.lzd.service.impl;

import com.github.pagehelper.PageHelper;
import com.lzd.mapper.NewsDetailMapper;
import com.lzd.pojo.NewsDetail;
import com.lzd.service.NewsDetailService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("newsDetailService")
public class NewsDetailServiceImpl implements NewsDetailService {
    @Autowired
    private NewsDetailMapper newsDetailMapper;

    @Override
    public List<NewsDetail> query1() {
        return newsDetailMapper.query1();
    }
    @Override
    public List<NewsDetail> query2() {
        return newsDetailMapper.query2();
    }
    @Override
    public List<NewsDetail> query3() {
        return newsDetailMapper.query3();
    }
    @Override
    public List<NewsDetail> query4() {
        return newsDetailMapper.query4();
    }
    @Override
    public List<NewsDetail> query5() {

        return newsDetailMapper.query5();
    }



    @Override
    public List<NewsDetail> queryByTitle(String title) {
        return newsDetailMapper.queryByTitle(title);
    }
   @Override
    public boolean add(NewsDetail newsDetail){
        newsDetail.setIssueDate(new Date());
        int row=newsDetailMapper.add(newsDetail);
        return row==1 ?true:false;
    }
    @Override
    public boolean delete(Integer id){
        int row=newsDetailMapper.delete(id);
        return row==1?true:false;
    }




    public NewsDetail queryById(Integer id){
        return newsDetailMapper.queryById(id);
    }

    @Override
    public boolean update(Integer id, String title, String content,String newsType) {
        int row=newsDetailMapper.update(id,title,content,newsType);
        return row==1?true:false;

    }


}
