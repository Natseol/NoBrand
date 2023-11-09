package com.javaproject.nobrand.goods.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaproject.nobrand.goods.dao.GoodsDAO;
import com.javaproject.nobrand.goods.domain.Goods;

@Service
public class GoodsService {
	@Autowired
	GoodsDAO goodsDAO;
	
	public Goods getGoods(int id) {
		Goods goods = goodsDAO.get(id);

		return goods;
	}
	
}