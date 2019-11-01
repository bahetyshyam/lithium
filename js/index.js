$('.sideBtn').on("click",function() {
	$('.sideBtn').toggleClass('btnc');
	$('.sidebar').toggleClass('side');
});

window.sr = ScrollReveal();
sr.reveal('#page2');