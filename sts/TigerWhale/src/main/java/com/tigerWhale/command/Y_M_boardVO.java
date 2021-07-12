package com.tigerWhale.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data // toString, getter, setter 자동생성
@AllArgsConstructor // 모든멤버변수 초기화생성
@NoArgsConstructor // 기본생성자
public class Y_M_boardVO {
	private int bno;
	private int M_year1;
	private int M_year2;
	private int M_month1;
	private int M_month2;
}
