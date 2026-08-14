package com.hasan.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DroneRentalRequest {
	private Integer requestId;
	private String customerName;
	private String droneModel;
	private String rentalPurpose;
	private Integer rentalDuration;
	private Long contactNumber;
	private String pickupLocation;
}
