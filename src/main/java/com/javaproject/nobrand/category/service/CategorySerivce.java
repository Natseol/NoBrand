package com.javaproject.nobrand.category.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaproject.nobrand.goods.dao.GoodsDAO;
import com.javaproject.nobrand.goods.domain.Goods;

@Service
public class CategorySerivce {
	@Autowired
	private GoodsDAO goodsDAO;
	
	public List<Goods> getAllList() {
		List<Goods> goodsList = goodsDAO.getAll();		
		return goodsList;
	}
	
	public List<Goods> getCategoryList(String kind) {
		List<Goods> goodsList = goodsDAO.getUsingCategory(kind);		
		return goodsList;
	}
	
	public List<Goods> getTargetList(String target) {
		List<Goods> goodsList = goodsDAO.getUsingSearch(target);		
		return goodsList;
	}
}
