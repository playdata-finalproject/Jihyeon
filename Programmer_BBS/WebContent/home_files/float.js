	self.onError=null;
	currentX = currentY = 0;  
	whichIt = null;           
	lastScrollX = 0; lastScrollY = 0;
	NS = (document.layers) ? 1 : 0;
	IE = (document.all) ? 1: 0;
	<!-- STALKER CODE -->
	function heartBeat() {
		
		if(IE) { 
			  //
			  diffY = document.documentElement.scrollTop;
			  //diffY = document.body.scrollTop; 
 			  diffX = 0; 
		       }
	    if(NS) { diffY = self.pageYOffset; diffX = self.pageXOffset; }
		//alert(lastScrollY)
		if(diffY != lastScrollY) {
	                percent = .1 * (diffY - lastScrollY);
	                if(percent > 0) percent = Math.ceil(percent);
	                else percent = Math.floor(percent);
			if(IE) document.all.floater.style.pixelTop += percent;
			if(NS) document.floater.top += percent; 
	                lastScrollY = lastScrollY + percent;
			
	    }
		if(diffX != lastScrollX) {
			percent = .1 * (diffX - lastScrollX);
			if(percent > 0) percent = Math.ceil(percent);
			else percent = Math.floor(percent);
			if(IE) document.all.floater.style.pixelLeft += percent;
			if(NS) document.floater.top += percent;
			lastScrollY = lastScrollY + percent;
		}	
		//alert(1);
	}	
	if(NS || IE) action = window.setInterval("heartBeat()",4);



$(document).ready(function(){	
	res_img();
});

function res_img() {
	var divs = document.querySelectorAll('.s_img > .img');
  	for (var i = 0; i < divs.length; ++i) {
    	var div = divs[i];
    	var divAspect = div.offsetHeight / div.offsetWidth;
    	div.style.overflow = 'hidden';
    
    	var img = div.querySelector('img');
    	var imgAspect = img.height / img.width;

		if (imgAspect <= divAspect) {
      
			// 이미지가 div보다 납작한 경우 세로를 div에 맞추고 가로는 잘라낸다
      		var imgWidthActual = div.offsetHeight / imgAspect;
      		var imgWidthToBe = div.offsetHeight / divAspect;
      		var marginLeft = -Math.round((imgWidthActual - imgWidthToBe) / 2)
      		img.style.cssText = 'width: auto; height: 100%;'
    		} else {
      
				// 이미지가 div보다 길쭉한 경우 가로를 div에 맞추고 세로를 잘라낸다
      			img.style.cssText = 'width: 100%; height: auto;';
    		}
		}
}

