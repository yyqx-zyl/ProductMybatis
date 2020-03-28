package commones;
/**
 * mybatis�Ĺ�����
 * @author Zylyyqx
 * @����ʱ�� 2020��3��28������7:08:12
 */

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Mybatisutils {
	private static SqlSessionFactory fac;
	//���������ļ�
	static {
		//1.��ȡ�����ļ�
		try {
			InputStream is=Resources.getResourceAsStream("mybatis-config.xml");
			fac=new SqlSessionFactoryBuilder().build(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//2.����һ��SqlSession����
	public static SqlSession creaSqlSesion() {
		SqlSession sqlSession=fac.openSession(false);
		return sqlSession;
	}
	
	//3.�ر�
	public static void closeSqlSession(SqlSession sqlSession) {
		if (sqlSession!=null) {
			sqlSession.close();
		}
	}
}
