package in.co.jk.form;

import javax.persistence.CascadeType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotEmpty;

import in.co.jk.dto.AddToCartDTO;
import in.co.jk.dto.BaseDTO;
import in.co.jk.dto.FeedbackDTO;
import in.co.jk.dto.UserDTO;
import lombok.Getter;
import lombok.Setter;
@Setter
@Getter
public class FeedbackForm extends BaseForm {
	@NotEmpty(message = "Ratings is required")
	private String ratings;
	@NotEmpty(message = "Comments is required")
	private String comments;
	
	private Long userId;
	
	private UserDTO user;
	
	private Long employerId;
	
	private Long bookingId;
	
	 private AddToCartDTO booking;
	@Override
	public BaseDTO getDTO() {
		FeedbackDTO bean = new FeedbackDTO();
		bean.setId(id);
		bean.setComments(comments);
		bean.setRatings(ratings);
		bean.setUser(user);
		bean.setUserId(userId);
		bean.setBooking(booking);
		bean.setEmployerId(employerId);
		bean.setBookingId(bookingId);
		bean.setCreatedBy(createdBy);
		bean.setModifiedBy(modifiedBy);
		bean.setCreatedDatetime(createdDateTime);
		bean.setModifiedDatetime(modifiedDateTime);
		return bean;
	}

	@Override
	public void populate(BaseDTO bDto) {
		FeedbackDTO bean = (FeedbackDTO)bDto;
		id = bean.getId();
		ratings = bean.getRatings();
		comments = bean.getComments();
		employerId = bean.getEmployerId();
		userId = bean.getUserId();
		bookingId = bean.getBookingId();
		user = bean.getUser();
		booking = bean.getBooking();
		createdBy=bean.getCreatedBy();
		modifiedBy=bean.getModifiedBy();
		createdDateTime=bean.getCreatedDatetime();
		modifiedDateTime=bean.getModifiedDatetime();
	}

}
