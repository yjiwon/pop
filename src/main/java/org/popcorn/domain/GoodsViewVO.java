package org.popcorn.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GoodsViewVO {

	private int gdsId;
	private String userId;
	private String gdsName;
	private String gdsCat;
	private int gdsPrice;
	private int gdsStock;
	private String gdsDes;
	private String gdsImage;
	private Date gdsDete;

	private String catCodeRef;
	private String catName;
	private String gdsThumbImg;

}
