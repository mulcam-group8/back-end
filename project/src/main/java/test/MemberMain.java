package test;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MemberMain {

	public static void main(String[] args) throws IOException {
		
		ApplicationContext factory = new ClassPathXmlApplicationContext("spring/mybatis/spring-mybatis.xml");
		
		//전체 회원 조회
		MemberService service = (MemberService)factory.getBean("mybatisservice");
		List<MemberDTO> list = service.memberlist();
		for(MemberDTO dto : list) {
			System.out.println(dto.getId() + " : " + dto.getName() + " : " + dto.getAddress());
		}
		
		
		// 저장
		MemberDTO dto = new MemberDTO();
		dto.setId("mybatis");
		dto.setPassword("mybatis");
		dto.setName("뽀로로");
		dto.setPhone("011-4839-2920");
		dto.setEmail("mybatis@b.com");
		dto.setAddress("춘천");
		int insertrow = service.insertmember(dto);
		System.out.println(insertrow);
				
		// 수정
		MemberDTO dto1 = new MemberDTO();
		dto1.setId("mybatis");
		dto1.setName("핑구");
		dto1.setAddress("제주");
		int updaterow = service.updatemember(dto1);
		System.out.println(updaterow);
				
		// 삭제
		int deleterow = service.deletemember("mybatis");
		System.out.println(deleterow);
		
		
		/*
		// 조회
		List<MemberDTO> list = session.selectList("memberlist");
		for(MemberDTO dt : list) {
			System.out.println(dt.getId() + " : " + dt.getName() + " : " + dt.getAddress());
		}
		
		//1개 레코드 조회
		MemberDTO onedto = session.selectOne("member","test");
		System.out.println(onedto.getId() + " : " + onedto.getName() + " : " + onedto.getAddress());
		
		//페이징처리 조회
		int[] limit = {5,6};
		List<MemberDTO> list1 = session.selectList("paginglist",limit);
		for(MemberDTO pagingdto : list1) {
			System.out.println(pagingdto.getId() + " : " + pagingdto.getName() + " : " + pagingdto.getAddress());
		}
		
		//조건검색조회
		String address[] = {"서울","제주"};
		List<String> list2 = session.selectList("addresssearch",address);
		for(String s : list2) {
			System.out.println(s);
		}
		*/
	}

}
