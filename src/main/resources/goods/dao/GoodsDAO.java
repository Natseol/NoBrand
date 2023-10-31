package goods.dao;

import java.util.List;

import goods.domain.Goods;

public interface GoodsDAO {
	public void add(Goods goods);
	public Goods get(int id);
	public List<Goods> getAll();
	public void update(Goods goods);
	public void delete(int id);
	



}
