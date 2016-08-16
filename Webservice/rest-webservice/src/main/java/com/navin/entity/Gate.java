package com.navin.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "gate")
public class Gate {

	private Long id;
	private String description;
	private Beacon beaconA;
	private Beacon beaconB;

	@Column(name = "description")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@ManyToOne
	@JoinColumn(name = "beacon_a_id", referencedColumnName = "id")
	public Beacon getBeaconA() {
		return beaconA;
	}

	public void setBeaconA(Beacon beaconA) {
		this.beaconA = beaconA;
	}

	@ManyToOne
	@JoinColumn(name = "beacon_b_id", referencedColumnName = "id")
	public Beacon getBeaconB() {
		return beaconB;
	}

	public void setBeaconB(Beacon beaconB) {
		this.beaconB = beaconB;
	}

}
