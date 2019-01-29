/**
 * 
 */

//首页
function mainPage() {
	window.location="main.jsp";
}
//用户管理
function userManage() {
	document.getElementById("myframe").src = "pages/userManage.jsp";
}
//我的OA
function myOA() {
	document.getElementById("myframe").src = "http://oa.asiapaint.cn/login/Login.jsp?logintype=1";
}
//我的位置
function mylocation() {
	document.getElementById("myframe").src = "https://map.baidu.com/";
}
//上传资源
function uploadFile() {
	/*var main = document.getElementById("main");
	var para = document.createElemrnt("p");
	var node = document.createTextNode("选择文件:");
	main.removeChild("mainfiled");
	main.appendChild(para);
	para.appendChild(node);*/
	document.getElementById("myframe").src = "pages/subuploadFile.jsp";
}

//资源检索
function resFind() {
	document.getElementById("myframe").src = "http://www.pansoso.com/";
}
//我的收藏
function myCollection() {
	document.getElementById("myframe").src = "pages/subCollection.jsp";
}
//我的工作
function myWork() {
	document.getElementById("myframe").src = "pages/myWork.jsp";
}
//我的笔记
function myNote() {
	document.getElementById("myframe").src = "pages/myNote.jsp";
}
//网易云音乐
function cloudMusic() {
	document.getElementById("myframe").src = "https://music.163.com/";
}