/**
 * 20211230 남동훈
 * 
 * 제품 목록 가져오기 위해
 */

//제품 데이터 JSON 형태로 반환 (List<ProductVO>)
function getProductList() {
	var list;
	$.ajax({
		url: "/suptman/product/rest/get-productinfo",
		dataType: 'json',
		async: false, 
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data){
			list = data;
		}
	});
	return list;
}

//제품 이름에(pName) 맞는 버전
function getProductVersion(pName){
	var list = "";
	$.ajax({
		data:{pName, pName},
		url:"/suptman/product/rest/get-productversion",
		dataType:"json",
		async: false, 
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data){
			list = data;
		}
	});
	return list;
}


function loadProduct(){
	var list = getProductList();
	var str = "<select name='pName' id='pName' onchange='changeSelection()'>";
	for(var i in list){
		str +="<option value="+list[i]+">"+list[i]+"</option>"
	}
	str += "</select>";
	return str;
}

function loadProductVersion(pName){
	var list = getProductVersion(pName);
	var str = "<select name='pVersion' id='pVersion'>";
	for(var i in list){
		str +="<option value="+list[i]+">"+list[i]+"</option>"
	}
	str += "</select>";
	return str;
}