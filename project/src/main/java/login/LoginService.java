package login;

public interface LoginService {
	public boolean loginid(String memberId);
	public boolean loginpw(String memberId,String memberPw);
	public String findid(MemberDTO dto);
	public String findpw(MemberDTO dto);
	public void replacepw(MemberDTO dto);
}
