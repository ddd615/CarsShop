package com.lzd.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lzd.pojo.Car;
import com.lzd.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/app")
public class CarController {

    private static  String uploadPath="E:/Cars_shop/src/main/webapp/static/image"+ File.separator;

   @Autowired
     private CarService carService;
   @RequestMapping("/car")
    public String car( @RequestParam(required = true,defaultValue = "1")Integer pageNo, @RequestParam(required = false,defaultValue = "5")Integer pageSize,Model model){
       PageHelper.startPage(pageNo, pageSize);
       List<Car> car =carService.queryCar();
       PageInfo<Car> page=new PageInfo<Car> (car);
       model.addAttribute("page",page);
       model.addAttribute("cars",car);
       return "behind/car";
   }
   @RequestMapping("/car/queryByWord")
    public String query(@RequestParam("word")String word,@RequestParam("wordType")String wordType,Model model){
       int wt=Integer.parseInt(wordType);
       model.addAttribute("word",word);
       if(wt==1){
           PageHelper.startPage(1, 5);
           List<Car> list=carService.queryByBrand(word);
           PageInfo<Car> page=new PageInfo<Car> (list);
           model.addAttribute("page",page);
           model.addAttribute("cars",list);
       }
       if(wt==2){
           PageHelper.startPage(1, 5);
           List<Car> list=carService.queryByNum(word);
           PageInfo<Car> page=new PageInfo<Car> (list);
           model.addAttribute("page",page);
           model.addAttribute("cars",list);
       }
       if(wt==3){
           PageHelper.startPage(1, 5);
           List<Car> list=carService.queryByType(word);
           PageInfo<Car> page=new PageInfo<Car> (list);
           model.addAttribute("page",page);
           model.addAttribute("cars",list);
       }
       return "behind/car";
   }
   @RequestMapping("/car/add")
    public String add(Car car, @RequestParam("file")MultipartFile multipartFile, Model model){
       if(multipartFile!=null && !multipartFile.isEmpty()){
       String originalFilename= multipartFile.getOriginalFilename();
       String fileNamePrefix=originalFilename.substring(0,originalFilename.indexOf("."));
       String newFilenamePrefix=fileNamePrefix+new Date().getTime();
       String newFilename=newFilenamePrefix+originalFilename.substring(originalFilename.indexOf("."));
       File file=new File(uploadPath+newFilename);
       car.setLogo(newFilename);
       try {
           multipartFile.transferTo(file);
       } catch (IOException e) {
           e.printStackTrace();
       }}
       boolean suc=carService.add(car);
       PageHelper.startPage(1, 5);
       List<Car> list =carService.queryCar();
       PageInfo<Car> page=new PageInfo<Car> (list);
       model.addAttribute("page",page);
       model.addAttribute("cars",list);
       return "behind/car";
   }
   @RequestMapping("/car/delete/{id}")
    public String delete(@PathVariable("id")Integer id,Model model){
       boolean suc=carService.delete(id);
       PageHelper.startPage(1, 5);
       List<Car> car =carService.queryCar();
       PageInfo<Car> page=new PageInfo<Car> (car);
       model.addAttribute("page",page);
       model.addAttribute("cars",car);
       return "behind/car";
   }
   @RequestMapping("/car/update/{id}")
    public String update(@PathVariable("id")Integer id,Model model){
       Car car=carService.queryById(id);
       model.addAttribute("car",car);
       return "behind/updatecar";
   }
   @RequestMapping("/car/updateTo")
    public  String updateTo(Car car,@RequestParam("file")MultipartFile multipartFile,Model model){
       if(multipartFile!=null && !multipartFile.isEmpty()){
           String originalFilename= multipartFile.getOriginalFilename();
           String fileNamePrefix=originalFilename.substring(0,originalFilename.indexOf("."));
           String newFilenamePrefix=fileNamePrefix+new Date().getTime();
           String newFilename=newFilenamePrefix+originalFilename.substring(originalFilename.indexOf("."));
           File file=new File(uploadPath+newFilename);
           car.setLogo(newFilename);
           try {
               multipartFile.transferTo(file);
           } catch (IOException e) {
               e.printStackTrace();
           }}
       boolean suc=carService.update(car);
       PageHelper.startPage(1, 5);
       List<Car> list =carService.queryCar();
       PageInfo<Car> page=new PageInfo<Car> (list);
       model.addAttribute("page",page);
       model.addAttribute("cars",list);
       return "behind/car";
   }

   @RequestMapping("/front/car")
    public String queryCar(Model model){
       String a="轿车";
       String b="跑车";
       String c="面包车";
       String d="货车";
       List<Car> list1=carService.queryByType(a);
       List<Car> list2=carService.queryByType(b);
       List<Car> list3=carService.queryByType(c);
       List<Car> list4=carService.queryByType(d);
       model.addAttribute("jiaoche",list1);
       model.addAttribute("paoche",list2);
       model.addAttribute("mianbaoche",list3);
       model.addAttribute("huoche",list4);
        int i= (int) Math.ceil(Math.random()*5);
        Car car=carService.queryi(i);
        List<Car> list=carService.queryNew();
        model.addAttribute("car1",list);
        model.addAttribute("car",car);
       return "front/show";
   }
   @RequestMapping("/query")
    public String query(Model model){
       List<Car> car =carService.queryCar();
       model.addAttribute("cars",car);
       return "front/query";
   }
   @RequestMapping("/front/{id}")
    public String xinpin(@PathVariable("id")Integer id,Model model){
       String a="轿车";
       String b="跑车";
       String c="面包车";
       String d="货车";
       List<Car> list1=carService.queryByType(a);
       List<Car> list2=carService.queryByType(b);
       List<Car> list3=carService.queryByType(c);
       List<Car> list4=carService.queryByType(d);
       model.addAttribute("jiaoche",list1);
       model.addAttribute("paoche",list2);
       model.addAttribute("mianbaoche",list3);
       model.addAttribute("huoche",list4);
       Car car=carService.queryById(id);
       List<Car> list=carService.queryNew();

       model.addAttribute("car1",list);
       model.addAttribute("car",car);
       return "front/show";
   }
}
