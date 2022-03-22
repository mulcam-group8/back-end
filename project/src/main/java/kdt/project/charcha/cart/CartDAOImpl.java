package kdt.project.charcha.cart;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAOImpl {
//Mybatis를 호출하므로 sqlsession에 의존성 주입
	
	@Inject
	SqlSession sqlSession;
	


}
