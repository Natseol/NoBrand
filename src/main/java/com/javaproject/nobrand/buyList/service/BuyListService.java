package com.javaproject.nobrand.buyList.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaproject.nobrand.buyList.dao.BuyListDAO;
import com.javaproject.nobrand.buyList.domain.BuyList;
import com.javaproject.nobrand.goods.dao.GoodsDAO;
import com.javaproject.nobrand.goods.domain.Goods;

@Service
public class BuyListService {
	@Autowired
	BuyListDAO buyListDAO;
	@Autowired
	GoodsDAO goodsDAO;
	
	public List<Goods> getGoodsList(List<BuyList> list) {
		List<Goods> goodsList = new ArrayList<Goods>();
		for (int i = 0; i < list.size(); i++) {
			int goodsId = list.get(i).getGoodsID();
			goodsList.add(goodsDAO.get(goodsId));			
		}				
		return goodsList;
	}
}
