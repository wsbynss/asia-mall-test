package com.ybin.bean;

public class Order {
	
	public static final int PAGE_SIZE = 10;
	
	private String vbeln;
	private String auart;
	private String auatt;
	private String vkbur;
	private String vkbut;
	private String vkgrp;
	private String vkgrt;
	private String vkorg;
	private String vtext;
	private String zebu;
	private String zebut;
	private String zxnum;
	private String zxnam;
	
	//无参构造函数
	public Order() {
		
	}
	
	//有参构造函数
	public Order(String vbeln, String auart, String auatt, String vkbur, String vkbut, String vkgrp, String vkgrt,
			String vkorg, String vtext, String zebu, String zebut, String zxnum, String zxnam) {
		super();
		this.vbeln = vbeln;
		this.auart = auart;
		this.auatt = auatt;
		this.vkbur = vkbur;
		this.vkbut = vkbut;
		this.vkgrp = vkgrp;
		this.vkgrt = vkgrt;
		this.vkorg = vkorg;
		this.vtext = vtext;
		this.zebu = zebu;
		this.zebut = zebut;
		this.zxnum = zxnum;
		this.zxnam = zxnam;
	}

	public String getVbeln() {
		return vbeln;
	}

	public void setVbeln(String vbeln) {
		this.vbeln = vbeln;
	}

	public String getAuart() {
		return auart;
	}

	public void setAuart(String auart) {
		this.auart = auart;
	}

	public String getAuatt() {
		return auatt;
	}

	public void setAuatt(String auatt) {
		this.auatt = auatt;
	}

	public String getVkbur() {
		return vkbur;
	}

	public void setVkbur(String vkbur) {
		this.vkbur = vkbur;
	}

	public String getVkbut() {
		return vkbut;
	}

	public void setVkbut(String vkbut) {
		this.vkbut = vkbut;
	}

	public String getVkgrp() {
		return vkgrp;
	}

	public void setVkgrp(String vkgrp) {
		this.vkgrp = vkgrp;
	}

	public String getVkgrt() {
		return vkgrt;
	}

	public void setVkgrt(String vkgrt) {
		this.vkgrt = vkgrt;
	}

	public String getVkorg() {
		return vkorg;
	}

	public void setVkorg(String vkorg) {
		this.vkorg = vkorg;
	}

	public String getVtext() {
		return vtext;
	}

	public void setVtext(String vtext) {
		this.vtext = vtext;
	}

	public String getZebu() {
		return zebu;
	}

	public void setZebu(String zebu) {
		this.zebu = zebu;
	}

	public String getZebut() {
		return zebut;
	}

	public void setZebut(String zebut) {
		this.zebut = zebut;
	}

	public String getZxnum() {
		return zxnum;
	}

	public void setZxnum(String zxnum) {
		this.zxnum = zxnum;
	}

	public String getZxnam() {
		return zxnam;
	}

	public void setZxnam(String zxnam) {
		this.zxnam = zxnam;
	}
	
	
	
	
}
