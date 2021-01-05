package notice.dto;

public class NoticeDTO {
	private int idx;
	private String name;
	private String email;
	private String inconveniences;
	private String passwd;
	private String content;
	private String post_date;
	//getter,setter,toString,생성자2
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getInconveniences() {
		return inconveniences;
	}
	public void setInconveniences(String inconveniences) {
		this.inconveniences = inconveniences;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPost_date() {
		return post_date;
	}
	public void setPost_date(String post_date) {
		this.post_date = post_date;
	}
	@Override
	public String toString() {
		return "NoticeDTO [idx=" + idx + ", name=" + name + ", email=" + email + ", inconveniences=" + inconveniences
				+ ", passwd=" + passwd + ", content=" + content + ", post_date=" + post_date + "]";
	}
	//기본생성자
	public NoticeDTO() {
		
	}
	
}
	

