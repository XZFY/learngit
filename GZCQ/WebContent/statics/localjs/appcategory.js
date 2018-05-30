/**
 * 
 */
$(function(){
    	//��ʼ����һ������
    	$cateLevel1 = $("#cateLevel1");
    	$cateLevel2 = $("#cateLevel2");
    	$cateLevel3 = $("#cateLevel3");
    	getCategory($cateLevel1,0);
    	//һ������ı�ѡ����ض�������
    	$cateLevel1.change(function(){
    		if($(this).val()==""){
    			return;
    		}else{
    			getCategory($cateLevel2,$(this).val());
    		}
    	});
    	//��������ı�ѡ�����3������
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
     			//�������ѡ��
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