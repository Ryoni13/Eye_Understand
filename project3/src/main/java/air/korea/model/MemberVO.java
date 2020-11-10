package air.korea.model;
// 번호(num), 이름(name), 아이디(id), 전화번호(phone), 이메일(email)
public class MemberVO {
	   private int num;
	   private String name;
	   private String id;
	   private String phone;
	   private String email;
	   public MemberVO() {   }
	public MemberVO(String name, String id, String phone, String email) {
		super();
		this.name = name;
		this.id = id;
		this.phone = phone;
		this.email = email;
	}
	public MemberVO(int num, String name, String id, String phone, String email) {
		super();
		this.num = num;
		this.name = name;
		this.id = id;
		this.phone = phone;
		this.email = email;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "MemberVO [num=" + num + ", name=" + name + ", id=" + id + ", phone=" + phone + ", email=" + email + "]";
	}	   
}
