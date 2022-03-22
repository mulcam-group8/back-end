package test;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


// ibatis �����̸� - Mybatis ����
// Repository ��, memberdao ��ü �ϳ� ����� �Ŷ� �Ȱ���
@Repository("mybatisdao")
public class MemberDAO {
	
	@Autowired
	SqlSession session;
	
	//����޼ҵ�
	public int insertmember(MemberDTO dto) {
		int insertrow = session.insert("insertmember",dto);
		return insertrow;
	}
	
	//�����޼ҵ�
	public int updatemember(MemberDTO dto) {
		return session.update("updatemember",dto);
	}
	
	//�����޼ҵ�
	public int deletemember(String id) {
		return session.delete("deletemember",id);
	}
	
	public List<MemberDTO> memberlist(){
		return session.selectList("memberlist");
	}
	
	public List<MemberDTO> memberlist(int[] page){
		return session.selectList("paginglist",page);
	}
	
	public List<String> memberaddresssearch(String[] address){
		return session.selectList("addresssearch",address);
	}
			
	public List<MemberDTO> memberlist(String[] id){
		List<MemberDTO> dto = new ArrayList<MemberDTO>();
		for(String i : id) {
			dto.add((MemberDTO) session.selectOne("member",i));
		}
		return dto;
	}
	
	public MemberDTO member(String id) {
		MemberDTO dto = (MemberDTO)session.selectOne("member",id);
		
		return dto;
	}
}
