package kr.co.doosun.mvc.dto;

public class LoginDTO {
	private int lognum ;
	private String logid, logip, logname, logstat, logstart, lotend;
	public int getLognum() {
		return lognum;
	}
	public void setLognum(int lognum) {
		this.lognum = lognum;
	}
	public String getLogid() {
		return logid;
	}
	public void setLogid(String logid) {
		this.logid = logid;
	}
	public String getLogip() {
		return logip;
	}
	public void setLogip(String logip) {
		this.logip = logip;
	}
	public String getLogname() {
		return logname;
	}
	public void setLogname(String logname) {
		this.logname = logname;
	}
	public String getLogstat() {
		return logstat;
	}
	public void setLogstat(String logstat) {
		this.logstat = logstat;
	}
	public String getLogstart() {
		return logstart;
	}
	public void setLogstart(String logstart) {
		this.logstart = logstart;
	}
	public String getLotend() {
		return lotend;
	}
	public void setLotend(String lotend) {
		this.lotend = lotend;
	}

}
