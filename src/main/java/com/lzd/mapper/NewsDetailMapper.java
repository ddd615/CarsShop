package com.lzd.mapper;

import com.lzd.pojo.NewsDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NewsDetailMapper {
    List<NewsDetail> query1();
    List<NewsDetail> query2();
    List<NewsDetail> query3();
    List<NewsDetail> query4();
    List<NewsDetail> query5();
    List<NewsDetail> queryByTitle(@Param("title")String title);

    int add(NewsDetail newsDetail);

    int delete(@Param("id") Integer id);


    NewsDetail queryById(@Param("id")Integer id);

    int update(@Param("id")Integer id, @Param("title") String title, @Param("content") String content,@Param("newsType")String newsType);

}
