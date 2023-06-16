package models;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "hrms_employeepermissionrequests")
public class ApplyPermissions {

	@EmbeddedId
	private PermissionCompositeKey id;

	@Column(name = "eprq_date")
	private Date current_date;

	@Column(name = "eprq_sttime")
	private Time start_time;

	@Column(name = "eprq_endtime")
	private Time end_time;

	@Column(name = "reason")
	private String reason;

	public PermissionCompositeKey getId() {
		return id;
	}

	public void setId(PermissionCompositeKey id) {
		this.id = id;
	}

	public Date getCurrent_date() {
		return current_date;
	}

	public void setCurrent_date(Date current_date) {
		this.current_date = current_date;
	}

	public Time getStart_time() {
		return start_time;
	}

	public void setStart_time(Time start_time) {
		this.start_time = start_time;
	}

	public Time getEnd_time() {
		return end_time;
	}

	public void setEnd_time(Time end_time) {
		this.end_time = end_time;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

}
