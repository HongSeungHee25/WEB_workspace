package org.iclass.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Community {
	//필드,객체의 프로퍼티
	private long r;
	private long idx;
	private String writer;			//로그인 id 이용하여 작성자 저장
	private String title;
	private String content;
	private int readCount;			//조회수
	private Timestamp createdAt;
	private String ip;
	private int commentCount;	//댓글 개수

}
