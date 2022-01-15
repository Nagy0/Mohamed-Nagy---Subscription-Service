package com.boost.subscriptionService.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "PLAN")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Plan {

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "PLANE_NAME")
	private String planName;

	@Column(name = "PRICE")
	private double price;

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "plan", cascade = CascadeType.ALL)
	@JsonIgnoreProperties("plan")
	private List<User> user = new ArrayList<>();
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "plan", cascade = CascadeType.ALL)
	private List<Card> cards = new ArrayList<>();
}
