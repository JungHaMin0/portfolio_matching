function showPopup() {
	url = this.href;
	name = "문의 하기"
	specs = "width=50%, height=80%, top=10%, left=50%, toolbar=no, menubar=no, scrollbars=no, resizable=no";
	
	window.open(url, name, specs);
	
	return false;
}