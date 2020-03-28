package commones;
/**
 * mybatis的工具类
 * @author Zylyyqx
 * @创建时间 2020年3月28日下午7:08:12
 */

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Mybatisutils {
	private static SqlSessionFactory fac;
	//加载配置文件
	static {
		//1.读取核心文件
		try {
			InputStream is=Resources.getResourceAsStream("mybatis-config.xml");
			fac=new SqlSessionFactoryBuilder().build(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//2.创建一个SqlSession对象
	public static SqlSession creaSqlSesion() {
		SqlSession sqlSession=fac.openSession(false);
		return sqlSession;
	}
	
	//3.关闭
	public static void closeSqlSession(SqlSession sqlSession) {
		if (sqlSession!=null) {
			sqlSession.close();
		}
	}
}
