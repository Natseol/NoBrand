package com.javaproject.nobrand.buyList.dao;

import java.util.List;



import com.javaproject.nobrand.buyList.domain.BuyList;


public interface BuyListDAO {
	public void add(BuyList buyList);
	public BuyList get(String userId);
	public List<BuyList> getAll();
	public void update(BuyList buyList);
	public void delete(String userId);

}
