package EyeUnderstand.model;

import java.io.InputStream;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import EyeUnderstand.model.MemberVO;

@Repository
// DB연결하는 객체
// mybatis.org(환경설정, 3개)
public class MemberDAO {
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	/*public List<TimeAirVO> getTimeList(){
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
	}*/


	   public MemberVO login(MemberVO vo) {
		   	
		      System.out.println("id : " + vo.getId());
		      System.out.println("pw : " + vo.getPw());
		      SqlSession session = sqlSessionFactory.openSession();
		      MemberVO vo1 = session.selectOne("memberLogin", vo);
		      session.close();
		      return vo1;
		   }
	   public FavoriteVO favoriteInsert(FavoriteVO vo) {
		      System.out.println("insert");
		      SqlSession session = sqlSessionFactory.openSession();
		      session.insert("favoriteInsert", vo);
		      session.commit();
		      session.close();
		      System.out.println("insert 완료");
		      return vo;
		   }
	   public String[] getTestList(){
		   	  SqlSession session = sqlSessionFactory.openSession();
		      List<WordVO> list = session.selectList("getTestList");
		      String[] list2 = new String[list.size()]; 
		      for (int i=0; i<list.size(); i++) {
		         list2[i] = list.get(i).getWords();
		      }
		      session.close(); // 반납
		      return list2;
		   }
	
}
