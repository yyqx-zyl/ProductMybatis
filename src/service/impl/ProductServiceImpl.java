package service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import Dao.ProductMapper;
import commones.Mybatisutils;
import entity.Product;
import service.ProductService;

public class ProductServiceImpl extends Mybatisutils implements ProductService{
	//创建接口对象
	private ProductMapper mapper;

	@Override
	public List<Product> list() {
		SqlSession sqlSession=creaSqlSesion();
		mapper=sqlSession.getMapper(ProductMapper.class);
		List<Product> list=mapper.getList();
		closeSqlSession(sqlSession);
		return list;
	}
	
}
