package org.iclass.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Builder
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class BookUser {	
	private String id;
	private String name;
	private String email;
	private int age;
	private Timestamp reg_date;
	private String password;

}
