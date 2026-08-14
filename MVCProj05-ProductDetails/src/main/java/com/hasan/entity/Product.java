package com.hasan.entity;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Component
@Data
@RequiredArgsConstructor
@NoArgsConstructor
public class Product {

	@NonNull
	private Integer id;

	@NonNull
	private String name;

	@NonNull
	private String brand;

	@NonNull
	private Double price;
}
