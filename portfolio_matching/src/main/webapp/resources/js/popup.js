function pmInquiryWrite(deal_id, portfolio_title) {
	var popupWidth = 1000;
	var popupHeight = 705;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);
	var popupY = (window.screen.height / 2) - (popupHeight / 2);
	
	url = "pmInquiryWrite.do?deal_id=" + deal_id + "&portfolio_title=" + portfolio_title;
	specs = "width=" + popupWidth + ", height= " + popupHeight + ", top=" + popupY + ", left=" + popupX;
	window.open(url, name, specs);
	
	return false;
}

function pmReviewWrite(portfolio_id) {
	var popupWidth = 1000;
	var popupHeight = 585;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);
	var popupY = (window.screen.height / 2) - (popupHeight / 2);
	
	url = "pmReview.do?portfolio_id=" + portfolio_id;
	specs = "width=" + popupWidth + ", height= " + popupHeight + ", top=" + popupY + ", left=" + popupX;
	window.open(url, name, specs);
	
	return false;
}