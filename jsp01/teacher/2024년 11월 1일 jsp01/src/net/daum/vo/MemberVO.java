package net.daum.vo;

public class MemberVO {//데이터 저장빈 클래스명
	/* 빈클래스 멤버변수명과 네임피라미터 이름을 같게 하면 코드 라인을 줄일 수 있다. 
	 */
	
	private String id;//회원아이디
	private String password;//비번
	private String name;//회원이름
	private String phone;//폰번호
	private String email;//이메일
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
}
