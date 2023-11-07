package com.javaproject.nobrand.goods.dao;

import java.util.List;

import com.javaproject.nobrand.goods.domain.Goods;



public interface GoodsDAO {
	public void add(Goods goods);
	public Goods get(int id);
	public List<Goods> getUsingCategory(String kind);
	public List<Goods> getUsingSearch(String kind);
	public List<Goods> getAll();
	public void update(Goods goods);
	public void delete(int id);
	



}
