package com.web.weixin.model;

import java.io.Serializable;

/**
 * 微信接口返回结果接收基类
 * 
 * @author jiangyf
 */
public class WXBase implements Serializable {
	private static final long serialVersionUID = 1954252565950618402L;

	// 错误编码
	private String errcode;
	// 错误提示
	private String errmsg;

	public String getErrcode() {
		return errcode;
	}

	public void setErrcode(String errcode) {
		this.errcode = errcode;
	}

	public String getErrmsg() {
		return errmsg;
	}

	public void setErrmsg(String errmsg) {
		this.errmsg = errmsg;
	}
}
