package org.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
@Getter
public class Reply {
	// 커뮤니티 댓글
	private int writeNo;			//글 번호
	private String id;				//회원ID
	private String reply;			//내용
	private Date createdDate;		//작성일

}
