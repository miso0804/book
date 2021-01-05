package tp;

public class tpDTO {
	private String userid;
	private String userpw;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	
	@Override
	public String toString() {
		return "tpDTO [userid=" + userid + ", userpw=" + userpw + "]";
	}
	public tpDTO() {
		
	}
	public tpDTO(String userid, String userpw, String name) {
		super();
		this.userid = userid;
		this.userpw = userpw;
	}
	
}