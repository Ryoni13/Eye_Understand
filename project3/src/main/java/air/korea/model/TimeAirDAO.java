package air.korea.model;

import java.io.InputStream;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
// DB연결하는 객체
// mybatis.org(환경설정, 3개)
public class TimeAirDAO {
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	public List<TimeAirVO> getTimeList(){
		SqlSession session = sqlSessionFactory.openSession();
		List<TimeAirVO> list = session.selectList("getTimeList");
		session.close(); // 반납
		return list;
	}
	


	public TimeAirVO getTimeSearch(TimeAirVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		TimeAirVO vo1 = session.selectOne("timeSearch", vo);
		System.out.print("VO : " + vo1);
		session.close();
		return vo1;
	}
	
	
}
