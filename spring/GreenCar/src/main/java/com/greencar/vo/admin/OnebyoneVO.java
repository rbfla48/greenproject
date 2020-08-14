package com.greencar.vo.admin;

import java.util.Date;

import lombok.Data;

@Data
public class OnebyoneVO {
	private int oboNo;
	private String oboTitle;
	private String oboContent;
	private String oboCategory;
	private String oboWriter;
	private String oboAnswer;
	private Date oboDate;
	private int oboViews;
}
