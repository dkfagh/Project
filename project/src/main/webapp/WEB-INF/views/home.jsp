<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>

<!-- include summernote-ko-KR -->
<script src="summernote/lang/summernote-ko-KR.js"></script>

<script type="text/javascript" src="https://rawgit.com/Pixabay/jQuery-tagEditor/master/jquery.caret.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://rawgit.com/Pixabay/jQuery-tagEditor/master/jquery.tag-editor.css">
<script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://rawgit.com/Pixabay/jQuery-tagEditor/master/jquery.tag-editor.js"></script>

	<title>Home</title>
</head>
<body>
<h2>test</h2>

<form name="form01" method="post">
	<table>
		<tr>
			<td>SummerNote</td>
			<td>
				<textarea id="summernote" name="editordata"></textarea>
			</td>
		</tr>
		<tr>
	        <td colspan="2" align="center">
	            <input type="button" value="등록">
	            <input type="button" value="목록">
	        </td>
	    </tr>
	</table>
  
</form>

<div style="padding :0 7px 0 5px;max-width:900px;margin:auto">
  <textarea id="hero-demo" class="tag-editor-hidden-src"></textarea>
  <ul class="tag-editor ui-sortable" style="display:none;">
    <li style="width:1px">&nbsp;</li>
    <li>
      <div class="tag-editor-spacer">&nbsp;,</div>
      <div class="tag-editor-tag">example tags</div>
      <div class="tag-editor-delete"><i></i>

      </div>
    </li>
    <li>
      <div class="tag-editor-spacer">&nbsp;,</div>
      <div class="tag-editor-tag">sortable</div>
      <div class="tag-editor-delete"><i></i>

      </div>
    </li>
    <li style="display: block;">
      <div class="tag-editor-spacer">&nbsp;,</div>
      <div class="tag-editor-tag">autocomplete</div>
      <div class="tag-editor-delete"><i></i>

      </div>
    </li>
    <li>
      <div class="tag-editor-spacer">&nbsp;,</div>
      <div class="tag-editor-tag">edit in place</div>
      <div class="tag-editor-delete"><i></i>

      </div>
    </li>
    <li>
      <div class="tag-editor-spacer">&nbsp;,</div>
      <div class="tag-editor-tag">tab/cursor navigation</div>
      <div class="tag-editor-delete"><i></i>

      </div>
    </li>
    <li>
      <div class="tag-editor-spacer">&nbsp;,</div>
      <div class="tag-editor-tag">duplicate check</div>
      <div class="tag-editor-delete"><i></i>

      </div>
    </li>
    <li>
      <div class="tag-editor-spacer">&nbsp;,</div>
      <div class="tag-editor-tag">callbacks</div>
      <div class="tag-editor-delete"><i></i>

      </div>
    </li>
    <li>
      <div class="tag-editor-spacer">&nbsp;,</div>
      <div class="tag-editor-tag">copy-paste</div>
      <div class="tag-editor-delete"><i></i>

      </div>
    </li>
    <li>
      <div class="tag-editor-spacer">&nbsp;,</div>
      <div class="tag-editor-tag">placeholder</div>
      <div class="tag-editor-delete"><i></i>

      </div>
    </li>
    <li>
      <div class="tag-editor-spacer">&nbsp;,</div>
      <div class="tag-editor-tag">public methods</div>
      <div class="tag-editor-delete"><i></i>

      </div>
    </li>
    <li>
      <div class="tag-editor-spacer">&nbsp;,</div>
      <div class="tag-editor-tag">custom delimiter</div>
      <div class="tag-editor-delete"><i></i>

      </div>
    </li>
    <li>
      <div class="tag-editor-spacer">&nbsp;,</div>
      <div class="tag-editor-tag">graceful degradation</div>
      <div class="tag-editor-delete"><i></i>

      </div>
    </li>
  </ul>
</div>

<script>
$(document).ready(function() {
	  $('#summernote').summernote({
          height: 300,                 // set editor height
          minHeight: null,             // set minimum height of editor
          maxHeight: null,             // set maximum height of editor
          width: 800,					// set editor width
          focus: true,                  // set focus to editable area after initializing summernote
          lang: 'ko-KR' 				// default: 'en-US'
	  });
	});
	
function product_write(){
    var contentData=$("#summernote").val();
    if(contentData==""){ //빈값이면
        alert("내용을 입력하세요"); 
        $("#summernote").focus(); //입력포커스 이동
        return; //함수 종료, 폼 데이터를 제출하지 않음
    }
    //폼 데이터를 받을 주소
    document.form1.action="${path}/shop/product/insert.do";
    //폼 데이터를 서버에 전송
    document.form1.submit();
}


$(function() {
	  $('#hero-demo').tagEditor({
	    delimiter: ',',
	    initialTags: ['Hello', 'World', 'Example', 'Tags'],
	    placeholder: 'Enter tags ...',
	    autocomplete: {
	      delay: 0,
	      position: {
	        collision: 'flip'
	      }
	    },
	    clickDelete: true,
	    beforeTagSave: beforeTagSavecb,
	    beforeTagDelete: beforeTagDeletecb,
	    onChange: onChangecb
	  });

	  function onChangecb(field, editor, tags) {
	    debugger;
	  }

	  function beforeTagSavecb(field, editor, tags, tag, val) {
	    debugger;
	  }

	  function beforeTagDeletecb(field, editor, tags, val) {
	    debugger;
	    return true;
	  }

	});

</script>


</body>
</html>
