<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ant demo</title>
<link rel="stylesheet" type="text/css" href="jquery-ui-1.8.12.custom.css">
<link href="jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="mobile.css">
<link rel="stylesheet" type="text/css" href="clipbookdatepicker.css">
<link rel="stylesheet" type="text/css" href="select.css">
<style>
.selOuter{position:relative;width:100px;height:25px;background:url("images/btn_add_doc_down.gif") no-repeat;display:inline-block;background-position: center right;}
.selOuter select{top:0px;left:0px;position:absolute;width:100px;height:25px;opacity:0;filter:alpha(opacity=0);
	-moz-opacity:0;
	-khtml-opacity: 0;}
</style>



<script type="text/javascript" src="js/jquery.min-1.7.2.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="jquery.easing.1.3.js"></script>
<script type="text/javascript" src="jquery.mousewheel.min.js"></script>
<script type="text/javascript"src="jquery.mCustomScrollbar.js"></script>
<script type="text/javascript" src="js/jquery-select.1.0.js"></script>
<script type="text/javascript" src="js/jquery-clipbook-datepicker.js"></script>
<script type="text/javascript">
var We3ClipbookPreviewDatePickerManager = function() {
	function init(config){
		$(document).ready(function() { 
			var year = new Date().getFullYear();
			$("#clipbookpreviewdatepicker").clipbookdatepicker({
				changeMonth: true,
				changeYear: true,
				showMonthAfterYear: true,
				dateFormat: 'yy-mm-dd',
				yearRange:"1998:" + year,
				buttonText: "Choose",
				onChangeMonthYear:function(year, month, instance){
					
				},
				onSelect:function(dateText,instance){
					
				},
				getClipbookDataCount:function(year, month, instance){
					return [10,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,50,100];
				}
			});
			$("#clipbookpreviewdatepicker").children("div").show();
			$("#menu_filtercal_button").click(function(event) {
				$("#menu_filtercal .mainMenu").removeClass("hide");
				$("#menu_filtercal .mainMenu").removeClass("fade-out");
				$("#menu_filtercal .mainMenu").addClass("show");
				$("#menu_filtercal .mainMenu").addClass("fade-in");
			});
			$("#menu_filtercal .close").click(function(event) {
				$("#menu_filtercal .mainMenu").removeClass("show");
				$("#menu_filtercal .mainMenu").removeClass("fade-in");
				$("#menu_filtercal .mainMenu").addClass("fade-out");
				$("#menu_filtercal .mainMenu").addClass("hide");
			});
			$("select").sSelect();
			
		});
	}
	
	

	return {
		init : function(config) {
			init(config);
		}
	}
}();
We3ClipbookPreviewDatePickerManager.init();

</script>
</head>
<BODY>
 <div class="search-container">
      <!-- <div class="searchbox">
        <form method="get" action="/search" id="search">
          <div class="sicon-container">
            <input type="sicon" value="&nbsp;" />
          </div>
          <input id="sa" type="text" size="40" value="Search article" onFocus="if(this.value=='Search article') {this.value='';this.style.color='#333'} " onBlur="if(this.value=='') {this.value='Search article';this.style.color='#999'}" />
          <div class="reset-container">
            <input type="reset" value="&nbsp;" onClick="document.getElementById('sa').value='Search article'; document.getElementById('sa').style.color='#999' " />
          </div>
        </form>
      </div> -->
      <div class="filter" id="menu_filtercal">
      	<a id="menu_filtercal_button" class="menuButton" href="#"><img src="images/icon_cal.png" class="noborder" align="absbottom" /> &nbsp;Other Date</a>
        <menu class="mainMenu">
            <div class="menuHandle"></div>
            <header>
                <div class="right"><a class="btn close">Done</a></div>
            </header>
            <ul class="dropdown-menu-basic">
                <div type="text" id="clipbookpreviewdatepicker"></div>
            </ul>
        </menu>
      </div>
    </div>
  <!--   <select onchange="alert(0)" onclick="alert(1)">
    	<option>123</option>
    	<option>456</option>
    	<option>789</option>
    	<option>1234</option>
    </select> -->
</BODY>