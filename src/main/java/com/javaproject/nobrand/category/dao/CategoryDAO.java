package com.javaproject.nobrand.category.dao;
import java.util.List;

import com.javaproject.nobrand.category.domain.Category;





public interface CategoryDAO {
	public void add(Category category);
	public Category get(int id);
	public List<Category> getAll();
	public void update(Category category);
	public void delete(int id);
}
