package com.navin.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "beacon")
public class Beacon {

	private Long id;
	private String description;
	private String uuid;
	private Long major;
	private Long minor;
	private BeaconType type;
	private Configuration configuration;
	private List<Route> routes;
	private List<Category> categories;

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

	@OneToMany
	@JoinColumn(columnDefinition="configuration_id", referencedColumnName="id")
	public Configuration getConfiguration() {
		return configuration;
	}

	public void setConfiguration(Configuration configuration) {
		this.configuration = configuration;
	}

	@OneToMany()
	@JoinColumn(columnDefinition="type_id", referencedColumnName="id")
	public BeaconType getType() {
		return type;
	}

	public void setType(BeaconType type) {
		this.type = type;
	}

	@Column(name = "minor")
	public Long getMinor() {
		return minor;
	}

	public void setMinor(Long minor) {
		this.minor = minor;
	}

	@Column(name = "major")
	public Long getMajor() {
		return major;
	}

	public void setMajor(Long major) {
		this.major = major;
	}

	@Column(name = "uuid")
	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	@ManyToMany(mappedBy="beacons")
	public List<Route> getRoutes() {
		return routes;
	}

	public void setRoutes(List<Route> routes) {
		this.routes = routes;
	}

	@ManyToMany(mappedBy="beacons")
	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

}
