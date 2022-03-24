package signup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("signupservice")
public class SignupServiceImpl implements SignupService {

	@Autowired
	@Qualifier("signupdao")
	MemberDAO dao;

	@Override
	public boolean checkid(String memberId) {
		boolean result=true;
		int count = dao.checkid(memberId);
		if(count != 0)
			result= false;
		return result;
	}

	@Override
	public void insertmember(MemberDTO dto) {
		dao.insertmember(dto);
		
	}

}
