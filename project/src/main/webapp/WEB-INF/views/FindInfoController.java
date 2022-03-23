package login;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.protobuf.GeneratedMessage.ExtendableMessage;

@Controller
public class FindInfoController {
	@Autowired
	@Qualifier("loginservice")
	LoginService service;
	
	@GetMapping("/findid")
	public String findidform() {
		return "findid";
	}
	
	@PostMapping("/findid")
	public ModelAndView findidresult(@RequestParam("name") String memberName,@RequestParam("email") String memberEmail, HttpServletRequest request) {
		String[] answer = new String[2];
		ModelAndView mv = new ModelAndView();
		
		if(memberName==null) {
			answer[0]="no";
		}else if(memberEmail == null) {
			answer[0]="no";
		}else {	
			
			MemberDTO dto = new MemberDTO();
			dto.setMemberName(memberName);
			dto.setMemberEmail(memberEmail);
			
			String id = service.findid(dto);
			
			if(id==null) {
				answer[0] = "no";
			}else {
				answer[0] = "yes";
				answer[1] = id;
			}
			mv.addObject("findresult",answer);
		}
		
		mv.setViewName("findid");
		
		return mv;
		
	}
	
	@GetMapping("/findpw")
	public String findpwform() {
		return "findpw";
	}
	
	@PostMapping("/findpw")
	public ModelAndView findpwresult(@RequestParam("id") String memberId,@RequestParam("name") String memberName, @RequestParam("email") String memberEmail, HttpServletRequest request) {
		String answer;
		ModelAndView mv = new ModelAndView();
		
		if(memberId==null) {
			answer="no";
		}else if(memberName == null) {
			answer="no";
		}else if(memberEmail == null){
			answer="no";
		}else {	
			MemberDTO dto = new MemberDTO();
			dto.setMemberName(memberName);
			dto.setMemberEmail(memberEmail);
			dto.setMemberId(memberId);
			
			String pw = service.findpw(dto);
			
			if(pw==null) {
				answer = "no";
			}else {
				answer = "yes";
				try {
					pw = mailsend(memberId,memberName,memberEmail,request);
					MemberDTO dto1 = new MemberDTO();
					dto1.setMemberId(memberId);
					dto1.setMemberPw(pw);
					service.replacepw(dto1);
				}
				catch(Exception e) {
					e.printStackTrace();
				}
			}
			mv.addObject("findresult2",answer);
			
			
		}
		
		mv.setViewName("findid");
		
		return mv;
		
	}
	
	public String mailsend(String id, String name, String email,HttpServletRequest request) throws AddressException, MessagingException, UnsupportedEncodingException {
		String host = "smtp.naver.com";
		
		final String username="hdmksm1";
		final String password = "dkalsdl30137";
		int port=465;
		
		byte[] array = new byte[7]; // length is bounded by 7
		new Random().nextBytes(array);
		String randompw = new String(array, Charset.forName("UTF-8"));
		
		String recipient = email;
		String subject = "[Charcha]�ӽ� ��й�ȣ�� �߱޵Ǿ����ϴ�.";
		String body = "<h2>�ȳ��ϼ��� " + name + "��</h2><br><br>"
				+ "<p>��й�ȣ ã�⸦ ��û���ּż� �ӽ� ��й�ȣ �߱��ص�Ƚ��ϴ�.</p>"
				+ "<p>�ӽ÷� �߱��� �帰 ��й�ȣ�� <h2 style='color : blue'>" + randompw 
				+ "</h2>�̸� �α��� �Ŀ� �������������� ��й�ȣ�� �������ֽñ� �ٶ��ϴ�.</p><br><br>"
				+ "<a href='http://localhost:8080/charcha/>Ȩ������ ����</a>";
		
		Properties props = System.getProperties();
		
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		//props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", "*");
		
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			String un=username;
			String pw = password;
			protected javax.mail.PasswordAuthentication getPasswordAuthentication(){
				return new javax.mail.PasswordAuthentication(un,pw);
			}
		});
		session.setDebug(true);
		
		Message mimeMessage = new MimeMessage(session); //MimeMessage����
		mimeMessage.setFrom(new InternetAddress("hdmksm1@naver.com"));
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
		
		mimeMessage.setSubject(MimeUtility.encodeText(subject,"UTF-8","B"));
		mimeMessage.setContent(body,"text/html;charset=UTF-8");
		Transport.send(mimeMessage);
				
		return randompw;
	}
	
}
