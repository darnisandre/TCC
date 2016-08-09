package com.navin.dto;

public class LocationDTO {
	private Long id;
	private String description;
	private Double latitude;
	private Double longitude;
	private ConfigurationDTO activeConfiguration;


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public ConfigurationDTO getActiveConfiguration() {
		return activeConfiguration;
	}

	public void setActiveConfiguration(ConfigurationDTO activeConfiguration) {
		this.activeConfiguration = activeConfiguration;
	}

}
