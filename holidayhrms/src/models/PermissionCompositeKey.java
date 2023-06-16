package models;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class PermissionCompositeKey implements Serializable {

	@Column(name = "empl_id")
	private int id;

	private int ep_index;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getEp_index() {
		return ep_index;
	}

	public void setEp_index(int ep_index) {
		this.ep_index = ep_index;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null || getClass() != obj.getClass())
			return false;
		PermissionCompositeKey that = (PermissionCompositeKey) obj;
		return id == that.id && ep_index == that.ep_index;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, ep_index);
	}

}
