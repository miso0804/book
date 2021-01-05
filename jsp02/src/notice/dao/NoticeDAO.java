package notice.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import guestbook.dto.GuestBookDTO;
import notice.dto.NoticeDTO;
import sqlmap.MybatisManager;

public class NoticeDAO {
	
	public List<NoticeDTO> getList(String searchkey, String search){
		SqlSession session=MybatisManager.getInstance().openSession();
		List<NoticeDTO> list=null;
		if(searchkey.equals("name_content")) {//이름+내용
			list=session.selectList("ntListAll", "%"+search+"%");
		}else {
			Map<String,String> map=new HashMap<>();
		
			map.put("searchkey", searchkey);
			map.put("search", "%"+search+"%");
			list=session.selectList("ntList",map);
		}
		
		
		for(NoticeDTO dto : list) {
			String content=dto.getContent();
			//태그 문자 처리
			content=content.replace("<", "&lt;");
			content=content.replace(">", "&gt;");
			//줄바꿈 처리
			content=content.replace("\n", "<br>");
			
			dto.setContent(content);
		}
		session.close();
		return list;
	}

	
	public void ntInsert(NoticeDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.insert("ntInsert", dto);
		session.commit();
		session.close();
	}

	//비밀번호 체크(idx:게시물 번호, passwd 사용자의 입력값)
	public boolean passwdCh(int idx, String passwd) {
		boolean result=false;
		SqlSession session=MybatisManager.getInstance().openSession();
		NoticeDTO dto=new NoticeDTO();
		dto.setIdx(idx);
		dto.setPasswd(passwd);
		//레코드가 1개가 리턴
		int count=session.selectOne("passwdCh", dto);
		session.close();
		if(count==1) {
			result=true;
		}
		return result;
	}
	
	public NoticeDTO ntDetail(int idx) {
		NoticeDTO dto=new NoticeDTO();
		SqlSession session=MybatisManager.getInstance().openSession();
		dto = session.selectOne("ntDetail", idx);
		session.close();
		return dto;
	}

	public void ntUpdate(NoticeDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("notice.ntUpdate", dto);
		session.commit();
		session.close();
	}

	public void ntDelete(int idx) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.delete("notice.ntDelete", idx);
		session.commit();
		session.close();
		
	}

}


