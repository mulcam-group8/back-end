package test;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


// ibatis 이전이름 - Mybatis 변경
// Repository 시, memberdao 객체 하나 만드는 거랑 똑같음
@Repository("mybatisdao")
public class MemberDAO {
	
	@Autowired
	SqlSession session;
	
	//저장메소드
	public int insertmember(MemberDTO dto) {
		int insertrow = session.insert("insertmember",dto);
		return insertrow;
	}
	
	//수정메소드
	public int updatemember(MemberDTO dto) {
		return session.update("updatemember",dto);
	}
	
	//삭제메소드
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
