<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div id="bookingForm">
	<div class="span-5">
		<h3>${booking.hotel.name}</h3>
		
		<address>
			${booking.hotel.address}
			<br/>
			${booking.hotel.city}, ${booking.hotel.state}, ${booking.hotel.zip}
			<br/>
			${booking.hotel.country}
		</address>
	</div>
	<div class="span-12 last">
		<form:form id="confirm" modelAttribute="booking" action="save">
		<form:hidden path="hotel.id" id="hotelId"/>
		<fieldset>
			<legend>Confirm Booking Details</legend>
			<div>
				<div class="span-3">Check In:</div>
				<div class="span-8 last">
					<p><spring:bind path="checkinDate">${status.value}</spring:bind></p>
				</div>
			</div>
			<div>
				<div class="span-3">Checkout:</div>
				<div class="span-8 last">
					<p><spring:bind path="checkoutDate">${status.value}</spring:bind></p>
				</div>
			</div>
	        <div>
	            <div class="span-3">Number of Nights:</div>
	            <div class="span-8 last">
	            	<p><spring:bind path="nights">${status.value}</spring:bind></p>
	            </div>
	        </div>
	        <div>
	            <div class="span-3">Total Payment:</div>
	            <div class="span-8 last">
	            	<p><spring:bind path="total">${status.value}</spring:bind></p>
	            </div>
	        </div>
			<div>
				<div class="span-3">Credit Card #:</div>
				<div class="span-8 last">
					<p>${booking.creditCard}</p>
				</div>
			</div>
			<div>
				<button type="submit" name="_eventId_confirm" id="confirm">Confirm</button>
				<button type="button" name="_eventId_revise" id="revise" onclick="goBack()">Revise</button>
				<button type="reset" name="_eventId_cancel" id="cancel">Cancel</button>
			</div>
			<script type="text/javascript">
			function goBack() {
				var hotelId = document.getElementById("hotelId").value;
				window.location.href = "../hotels/booking?hotelId=" + hotelId;
			}
			</script>
		</fieldset>
		</form:form>
	</div>

</div>
