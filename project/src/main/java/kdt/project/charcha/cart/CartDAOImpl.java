package kdt.project.charcha.cart;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAOImpl {
//Mybatis�� ȣ���ϹǷ� sqlsession�� ������ ����
	
	@Inject
	SqlSession sqlSession;
	


}
