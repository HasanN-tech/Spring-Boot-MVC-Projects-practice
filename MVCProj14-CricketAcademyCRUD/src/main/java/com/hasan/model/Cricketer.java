package com.hasan.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity

public class Cricketer {
	@Id
	@SequenceGenerator(name = "cricket", sequenceName = "cricket_seq", allocationSize = 1, initialValue = 101)
	@GeneratedValue(generator = "cricket",strategy = GenerationType.SEQUENCE)
	private Integer id;

	@NonNull
	private String playerName;

	@NonNull
	private String teamName;

	@NonNull
	private String role;

	@NonNull
	private String battingStyle;

	@NonNull
	private Integer jerseyNumber;

}
