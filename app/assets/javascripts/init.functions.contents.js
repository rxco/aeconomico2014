function init_functions_content(){


	$(document).on("click",".subchapter_choose_content",function(){
			var _subchapter_selected = $(this).attr("data-sb-id");
			$("#content_subchapter_id").val(_subchapter_selected);
			load_content_by_subchapter(_subchapter_selected);
	});

}



function load_content_by_subchapter(_id_subchapter){
	var _params = {}
	var _domain = document.domain;
    var _url ="http://"+ _domain +":3000/subchapters/"+_id_subchapter;
    _url += ".json";
    //alert(_url);
    var _fnDoNothing = function(){};

    var _fnFail = function(){
    	alert("ehhh puto! hubo error");
    };

    var _fnDoTheWork = function(data){

    		$("#lista_contenidos_por_subcapitulo tbody").html("");

    		if(data.length > 0){
    			$(data).each(function(index,dat){
    				showFormUpdateContents();
    				showFormNewContent();
    				//var html = "<li>"+dat.es_description+"</li>";
    				createNewContentHtmlObject(dat.es_description,
    					dat.en_description,
    					dat.subchapter_id,
    					dat.image_url,
    					dat.content_type,
    					dat.order);

    			});
    		}
    		else{
    			hideFormUpdateContents();
    			showFormNewContent();
    		}
    };



	llamadaAjaxGet(_url, _params,_fnDoTheWork, _fnDoNothing,_fnFail , _fnDoNothing);

}


function showFormNewContent(){
	$("#contenidos_new").show();

}

function showFormUpdateContents(){
	$("#contenidos_load").show();
}

function hideFormNewContent(){
	$("#contenidos_load").hide();
}

function hideFormUpdateContents(){
	$("#contenidos_load").hide();
}


function createNewContentHtmlObject(_esDescription,_enDescription,_sbChapter,_imgUrl,_contentType,_order){
	
	var html="<tr><td>"+_esDescription+"</td>";
	html += "<td>"+_enDescription+"</td>";
	html += "<td>"+_sbChapter+"</td>";
	html += "<td>"+_imgUrl+"</td>";
	html += "<td>"+_contentType+"</td>";
	html += "<td>"+_order+"</td></tr>";

	$("#lista_contenidos_por_subcapitulo tbody").append(html);

}
