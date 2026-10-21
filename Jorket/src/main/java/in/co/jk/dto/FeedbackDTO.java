package in.co.jk.dto;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
@Entity
@Table(name = "j_feedback")
@Setter
@Getter
public class FeedbackDTO extends BaseDTO {

	private String ratings;
	
	private String comments;
	
	private Long userId;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user", nullable = false)
	private UserDTO user;
	
	private Long employerId;
	
	 @OneToOne(cascade = CascadeType.ALL)
	 @JoinColumn(name = "booking",referencedColumnName = "id")
	 private AddToCartDTO booking;
	// testing
	private Long bookingId;
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
