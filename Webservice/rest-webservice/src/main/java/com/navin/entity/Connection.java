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
@Table(name = "connection")
public class Connection {

	private Long id;
	private Beacon beaconA;
	private Beacon beaconB;
	private Double distance;
	private Double direction;


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

	@Column(name="direction")
	public Double getDirection() {
		return direction;
	}

	public void setDirection(Double direction) {
		this.direction = direction;
	}

	@Column(name="distance")
	public Double getDistance() {
		return distance;
	}

	public void setDistance(Double distance) {
		this.distance = distance;
	}


}
