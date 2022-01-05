/**
 * 20220103 남동훈
 * 
 * 고객사 목록
 */

//데이터 JSON 형태로 반환 (List<CustomerVO>)
function getCustomerInfo(cId) {
	var list;
	$.ajax({
		url: "/suptman/customer/rest/get-customerinfo",
		dataType: 'json',
		async: false, 
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data){
			list = data;
		}
	});
	return list;
}

function getCustomerListFromPId(pId){
	var list;
	$.ajax({
		url:"/suptman/customer/rest/get-customerlist-frompid",
		data : {pId : pId},
		dataType:"json",
		async: false,
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		success : function(data){
			console.log(data);
			list = data;
		}
	});
	return list;
}

function loadCustomerList(){
/*	var str = "<select name='pName' id='pName' onchange='changeSelection()'>";
	for(var i in list){
		str +="<option value="+list[i]+">"+list[i]+"</option>"
	}
	str += "</select>";*/
//	return str;
}

function loadCustomerListFromPId(pId){
	var list = getCustomerListFromPId(pId);
	str = "<select name='cId' id='cId'>";
	for (var i in list){
		str += "<option value="+list[i].cId+">"+list[i].cName+"</option>";
	}
	str += "</select>";
	return str;
}