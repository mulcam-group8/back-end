package signup;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("signupdao")
public class MemberDAO {
	
	@Autowired
	SqlSession session;
	
	int checkid(String memberId) {
		int count = (int)session.selectOne("signup.checkid",memberId);
		
		return count;
	}
    void insertmember(MemberDTO dto) {
    	session.insert("signup.insertmember",dto);
    }
	
}
