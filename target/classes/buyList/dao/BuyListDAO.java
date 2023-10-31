package buyList.dao;

import java.util.List;

import buyList.domain.BuyList;


public interface BuyListDAO {
	public void add(BuyList buyList);
	public BuyList get(int id);
	public List<BuyList> getAll();
	public void update(BuyList buyList);
	public void delete(int id);

}
