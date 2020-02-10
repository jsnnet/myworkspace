package kr.co.doosun.mvc.dto;


/*sanum number(3),
saname varchar2(10) constraint sawon_saname_nn not null,
saposition varchar2(10),
sapay number(10),
sahire date default sysdate,
sasex varchar2(6),
samgr number(3)*/


public class SawonVO {
	private int sanu, sapay, samgr;
	private String saname, saposition, sahire, sasex;
	public int getSanu() {
		return sanu;
	}
	public void setSanu(int sanu) {
		this.sanu = sanu;
	}
	public int getSapay() {
		return sapay;
	}
	public void setSapay(int sapay) {
		this.sapay = sapay;
	}
	public int getSamgr() {
		return samgr;
	}
	public void setSamgr(int samgr) {
		this.samgr = samgr;
	}
	public String getSaname() {
		return saname;
	}
	public void setSaname(String saname) {
		this.saname = saname;
	}
	public String getSaposition() {
		return saposition;
	}
	public void setSaposition(String saposition) {
		this.saposition = saposition;
	}
	public String getSahire() {
		return sahire;
	}
	public void setSahire(String sahire) {
		this.sahire = sahire;
	}
	public String getSasex() {
		return sasex;
	}
	public void setSasex(String sasex) {
		this.sasex = sasex;
	}
	
}
