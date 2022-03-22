package test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("mybatisservice")
public class MemberServiceImpl implements MemberService {

	@Autowired
	@Qualifier("mybatisdao")
	MemberDAO dao;

	@Override
	public int insertmember(MemberDTO dto) {
		return dao.insertmember(dto);
	}

	@Override
	public int updatemember(MemberDTO dto) {
		return dao.updatemember(dto);
	}

	@Override
	public int deletemember(String id) {
		return dao.deletemember(id);
	}

	@Override
	public List<MemberDTO> memberlist() {
		return dao.memberlist();
	}

	@Override
	public List<MemberDTO> memberlist(int[] page) {
		return dao.memberlist(page);
	}

	@Override
	public List<String> memberaddresssearch(String[] address) {
		return dao.memberaddresssearch(address);
	}

	@Override
	public List<MemberDTO> memberlist(String[] id) {
		// TODO Auto-generated method stub
		return dao.memberlist(id);
	}

	@Override
	public MemberDTO member(String id) {
		return dao.member(id);
	}
	
	

}
