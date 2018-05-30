/**
 * 
 */
$(function(){
    	//初始加载一级分类
    	$cateLevel1 = $("#cateLevel1");
    	$cateLevel2 = $("#cateLevel2");
    	$cateLevel3 = $("#cateLevel3");
    	getCategory($cateLevel1,0);
    	//一级分类改变选项，加载二级分类
    	$cateLevel1.change(function(){
    		if($(this).val()==""){
    			return;
    		}else{
    			getCategory($cateLevel2,$(this).val());
    		}
    	});
    	//二级分类改变选项，加载3级分类
    	$cateLevel2.change(function(){
    		if($(this).val()==""){
    			return;
    		}else{
    			getCategory($cateLevel3,$(this).val());
    		}
    	});
     });
   
     function getCategory(obj,pid){
    	 
    	 $.ajax({
     		url:"<%=path%>/categoryList",
     		type:"get",
     		data:{parentId:pid},
     		dataType:"json",
     		success:function(data){
     			//清除多余选项
     			obj.children().not(":first").remove();
 				for(var i = 0; i < data.length;i++){
 					var $option = $("<option></option>");
 					$option.val(data[i].id);
 					$option.html(data[i].categoryName);
 					obj.append($option);
 				}
     		},
     		error:function(data){alert(data.responseText);}
     	});
     }