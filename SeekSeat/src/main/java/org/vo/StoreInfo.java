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
public class StoreInfo {
	private String store_id; // 매장 ID
	private String owner_id; // 사장님 ID
	private String name; // 가게 이름
	private String category; // 카테고리
	private int store_tel; // 전화 번호(매장 번호)
	private String address; // 매장 주소
	private Date openTime; // 오픈 시간
	private Date closeTime; // 마감시간
	private String closedDays; // 휴무일
	private String content; // 매장소개
	private String mainPictureUrl; // 대표 사진
	private String pictureUrl; // 사진
	private String menuPictureUrl; // 매뉴판 사진
	private Double rating; // 평점
	private int reviewCount; // 리뷰수
}
