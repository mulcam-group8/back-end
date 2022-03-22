package test;

import java.util.List;

public interface MemberService {
	public int insertmember(MemberDTO dto);
	public int updatemember(MemberDTO dto);
	public int deletemember(String id);
	
	public List<MemberDTO> memberlist();
	public List<MemberDTO> memberlist(int[] page);
	public List<String> memberaddresssearch(String[] address);
	public List<MemberDTO> memberlist(String[] id);
	public MemberDTO member(String id);
}
