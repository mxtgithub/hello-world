package com.util;

public class Real_monitor {
		private int heart;
		private String realtime;
	public Real_monitor() {
		super();
	}
	
	public Real_monitor(String realtime) {
		super();
		this.realtime = realtime;
	}

	public String getRealtime() {
	
		return realtime;
	}
	public void setRealtime(String Realtime) {
	
		this.realtime = realtime;
	}
	
	public int getHeart() {
		return heart;
	}
	public void setAreaNum(int heart) {
		this.heart = heart;
	}
}
