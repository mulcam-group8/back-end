package signup;

public interface SignupService {
	boolean checkid(String memberId);
    void insertmember(MemberDTO dto);
}
