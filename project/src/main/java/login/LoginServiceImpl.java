package login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("loginservice")
public class LoginServiceImpl implements LoginService {

	@Autowired
	@Qualifier("logindao")
	MemberDAO dao;
	
	@Override
	public boolean loginid(String memberId) {
		boolean result = false;
		int count = dao.loginid(memberId);
		if(count==1)
			result = true;
		return result;
	}

	@Override
	public boolean loginpw(String memberId,String memberPw) {
		boolean result = false;
		String pw = dao.loginpw(memberId);
		if(pw.equals(memberPw))
			result = true;
		return result;
	}

	@Override
	public String findid(MemberDTO dto) {
		String memberId = dao.findid(dto);
		
		return memberId;
	}

	@Override
	public String findpw(MemberDTO dto) {
		String memberPw = dao.findpw(dto);
		
		return memberPw;
	}

	@Override
	public void replacepw(MemberDTO dto) {
		dao.replacepw(dto);
		
	}

}
