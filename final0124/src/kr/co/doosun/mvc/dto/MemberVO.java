package kr.co.doosun.mvc.dto;

public class MemberVO {
//	MEMNUM	NUMBER
//	MEMID	VARCHAR2(20 BYTE)
//	MEMPWD	VARCHAR2(30 BYTE)
//	MEMNAME	VARCHAR2(20 BYTE)
//	MEMAGE	NUMBER(5,0)
//	MEMGENDER	VARCHAR2(10 BYTE)
//	MEMPHONE	VARCHAR2(50 BYTE)
//	MEMDATE	DATE
//	MEMPOST	NUMBER(10,0)
//	MEMADDR1	VARCHAR2(50 BYTE)
//	MEMADDR2	VARCHAR2(50 BYTE)
//	MEMEMAIL	VARCHAR2(50 BYTE)
//	MEMPOINT	NUMBER(5,0)

	private int memnum, memage, mempost, mempoint;
	private String memid, mempwd, memname, memgender, memphone, memdate, memaddr1, memaddr2, mememail;
	
	public int getMemnum() {
		return memnum;
	}
	public void setMemnum(int memnum) {
		this.memnum = memnum;
	}
	public int getMemage() {
		return memage;
	}
	public void setMemage(int memage) {
		this.memage = memage;
	}
	public int getMempost() {
		return mempost;
	}
	public void setMempost(int mempost) {
		this.mempost = mempost;
	}
	public int getMempoint() {
		return mempoint;
	}
	public void setMempoint(int mempoint) {
		this.mempoint = mempoint;
	}
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public String getMempwd() {
		return mempwd;
	}
	public void setMempwd(String mempwd) {
		this.mempwd = mempwd;
	}
	public String getMemname() {
		return memname;
	}
	public void setMemname(String memname) {
		this.memname = memname;
	}
	public String getMemgender() {
		return memgender;
	}
	public void setMemgender(String memgender) {
		this.memgender = memgender;
	}
	public String getMemphone() {
		return memphone;
	}
	public void setMemphone(String memphone) {
		this.memphone = memphone;
	}
	public String getMemdate() {
		return memdate;
	}
	public void setMemdate(String memdate) {
		this.memdate = memdate;
	}
	public String getMemaddr1() {
		return memaddr1;
	}
	public void setMemaddr1(String memaddr1) {
		this.memaddr1 = memaddr1;
	}
	public String getMemaddr2() {
		return memaddr2;
	}
	public void setMemaddr2(String memaddr2) {
		this.memaddr2 = memaddr2;
	}
	public String getMememail() {
		return mememail;
	}
	public void setMememail(String mememail) {
		this.mememail = mememail;
	}

}
