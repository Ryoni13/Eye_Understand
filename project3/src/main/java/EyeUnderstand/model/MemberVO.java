package EyeUnderstand.model;

public class MemberVO {
	private String id;
	private String pw;

	public MemberVO() {

	}

	
	
	public MemberVO(String id) {
		this.id = id;
	}



	public MemberVO(String mem_id, String mem_pw) {
		id = mem_id;
		pw = mem_pw;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	

}
