package com.javaproject.nobrand.goods.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaproject.nobrand.goods.dao.GoodsDAO;

@Service
public class GoodsService {
	@Autowired
	GoodsDAO goodsDAO;
	
}
