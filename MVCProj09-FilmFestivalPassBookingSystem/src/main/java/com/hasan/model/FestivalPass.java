package com.hasan.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class FestivalPass {
	private Integer passId;
	private String visitorName;
	private String nationality;
	private String festivalCategory;
	private String passType;
	private Integer visitingDays;
	private String email;
}
