/**
 * 
 */
window.onload = function(){
   var vd2 = document.getElementById("ssg-query")
   var vd2 = document.querySelector('#ssg-query')
   
   setInterval(function(){ 
	    vr = parseInt(Math.random()*256); 
	    vg = parseInt(Math.random()*256); 
	    vb = parseInt(Math.random()*256); 
	    
	    vd2.style.outlineColor = 
	    	'rgb(' + vr +',' + vg +',' + vb +')'; 
	    
   }, 2000)
   
}
