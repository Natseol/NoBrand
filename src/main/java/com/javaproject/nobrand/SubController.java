package com.javaproject.nobrand;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaproject.nobrand.goods.dao.GoodsDAO;
import com.javaproject.nobrand.goods.domain.Goods;

@Controller
public class SubController {
	@Autowired
	private GoodsDAO goodsDAO;

	@RequestMapping(value = "/sub", method = RequestMethod.GET)
	public String sub(@RequestParam Map<String,String> map,HttpSession session) {
		List<Goods> goodsList = goodsDAO.getAll();
		session.setAttribute("goodsList", goodsList);		
		System.out.println(goodsList.get(0).getName());
		return "sub/main";
	}
	
}
