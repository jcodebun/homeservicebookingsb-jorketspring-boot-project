package in.co.jk.dto;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import in.co.jk.dto.BaseDTO;
import in.co.jk.dto.ServicesDTO;
import in.co.jk.dto.UserDTO;
import lombok.Getter;
import lombok.Setter;
@Entity
@Table(name = "j_addtocart")
@Setter
@Getter
public class AddToCartDTO extends BaseDTO{

	private String dateOfBooking;
	
	private Long userId;
	
	private String status;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user", nullable = false)
	private UserDTO user;
	
	@Column(name = "professional_name", length = 255)
	private String professionalName;
	
	private String customerContactNo;
	
//	private Long serviceId;
//	
//	@ManyToOne(cascade = CascadeType.ALL)
//	@JoinColumn(name = "service", nullable = false)
//	private ServicesDTO service;
	
	@Column(name = "service_name", length = 255)
	private String serviceName;
	
	@Column(name = "timing_request")
	private String timingRequest;
	
	@OneToOne(mappedBy = "booking", cascade = { CascadeType.ALL })
	 private FeedbackDTO feedbackDTO;
	
	@Override
	public String getKey() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getValue() {
		// TODO Auto-generated method stub
		return null;
	}

}
