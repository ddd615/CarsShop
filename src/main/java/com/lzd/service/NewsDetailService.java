package com.lzd.service;

import com.lzd.pojo.NewsDetail;


import java.util.List;

public interface NewsDetailService {
    List<NewsDetail> query1();

    List<NewsDetail> query2();

    List<NewsDetail> query3();

    List<NewsDetail> query4();

    List<NewsDetail> query5();

    List<NewsDetail> queryByTitle(String title);

    boolean add(NewsDetail newsDetail);


    boolean delete(Integer id);


    NewsDetail queryById(Integer id);


    boolean update(Integer id,String title, String content,String newsType);
}
