$(function(){
    add_buttons();      // Adds slide buttons
});
var c=0, flag=1, flag2=1, time=0, len;
function add_buttons(){
	var dd=document.getElementById("slide_content").getElementsByTagName("slide");
	var str="";
	var i;
	for(i=0;i<dd.length;i++)
		str+="<div class=\"button\" id=\"button"+i+"\" onclick=\"locate("+i+")\"></div>\n";
	len=dd.length;
	document.getElementById("slid_change").innerHTML=str;
	test();
}
function test(){
	if(flag==1){
		var pt=c%len;
		pt--;
		if(pt<0)
			pt+=len;
		document.getElementById("c"+pt).style.opacity=0;
		document.getElementById("c"+((pt+1)%len)).style.opacity=1;
		c+=1;
		change();
		setTimeout("test()", 5000);
	}
}

function change(){
	var pt=(c-1)%len;
	document.getElementById("button"+pt).style.background="limegreen";
	pt--;
	if(pt<0)
		pt+=len;
	document.getElementById("button"+pt).style.background="gray";
}

function locate(num){
	var x=flag;
	flag=0;
	pt=c%len;
	pt--;
	if(pt<0)
		pt+=len;
	document.getElementById("c"+pt).style.opacity=0;
	document.getElementById("button"+pt).style.background="gray";
	document.getElementById("c"+num).style.opacity=1;
	document.getElementById("button"+num).style.background="limegreen";
	c=num+1;
	time=0;
	if(x)
		flag_active();
}

function flag_active(){
	if(time==5){
		flag=1;
		test();
	}
	else{
		time++;
		setTimeout("flag_active()", 1000)
	}
}
