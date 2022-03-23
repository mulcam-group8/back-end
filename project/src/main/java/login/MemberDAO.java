package login;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("logindao")
public class MemberDAO {
	
	@Autowired
	SqlSession session;
	
	public int loginid(String memberId) {
		int count = (int)session.selectOne("login.loginid",memberId);
		return count;
	}
	
	public String loginpw(String memberId) {
		String result = (String)session.selectOne("login.loginpw", memberId);
		
		return result;
	}
	
	public String findid(MemberDTO dto) {
		String memberId = (String)session.selectOne("login.findid",dto);
		return memberId;
	}
	
	public String findpw(MemberDTO dto) {
		String count = (String)session.selectOne("login.findpw",dto);
		return count;
	}
	
	public void replacepw(MemberDTO dto) {
		session.update("login.replacepw", dto);
	}
}
