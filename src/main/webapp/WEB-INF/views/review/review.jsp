<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/userinfo.css" rel="stylesheet" type="text/css">
<title>리뷰 작성</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<style>
    /* #container {
        width: 1100px;        
        margin: 20px auto;
    }
    .ck-editor__editable[role="textbox"] {
        min-height: 500px;
        width : 1100px;     
    }
    .ck-content .image {
        max-width: 80%;
        margin: 10px auto;
    } */
</style>
<body>
	<div>

    </div>
<script src="resources/scripts/UploadAdapter.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/40.0.0/balloon/ckeditor.js"></script>
<script>
	let userInfo = ${requestScope.user};
    console.log(userInfo);

	// function MyCustomUploadAdapterPlugin(editor) {
	// 	editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
	// 		return new UploadAdapter(loader)
	// 	}
	// }

	// ClassicEditor.create(document.querySelector('#editor'), {
	// 	language:'ko',
	// 	extraPlugins: [MyCustomUploadAdapterPlugin]
	// }).then(editor => {
	// 	window.editor = editor;
	// }).catch( error => {
	// 	console.error( error );
	// });

	// ClassicEditor.create(document.querySelector('#thumbnail'), {
	// 	language:'ko',
	// 	extraPlugins: [MyCustomUploadAdapterPlugin]
	// }).then(editor => {
	// 	window.editor = editor;
	// }).catch( error => {
	// 	console.error( error );
	// });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="/nobrand/resources/scripts/userinfo.js"></script>
</body>
</html>