package org.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
public class Reservation {
	private String reserveNo; // 예약 번호
	private String user_id; // 회원 ID
	private String store_id; // 매장 ID
	private Date reserveDate; // 예약일
	private int headCount; // 인원수
	private int tableNo; // 테이블 번호
	private Date applicationDate; // 신청일
	private int status; // 예약상태
}
