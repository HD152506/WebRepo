
	function menu_over(e) {
		e.setAttribute("class", "nav-item active");
	}
	function menu_out(e) {
		e.setAttribute("class", "nav-item");
	}
 	$(document).ready(function () {
 		$('#loginForm').submit(function (event) {
 				event.preventDefault();
 				var id = $('#id').val();
 				var pwd = $('#pwd').val();
 				console.log(id, pwd);
 				$.post("http://httpbin.org/post",
 							{ "id" : id, "pwd" : pwd},
 							function(data) {
 								var myModal = $('#myModal');
 								myModal.modal();
 								myModal.find('.modal-body').text(data.form.id + '님 로그인되었습니다.')
 							});
 		});
 		
 		$('#signinForm').submit(function (event) {
				event.preventDefault();
				var name = $('#name').val();
				console.log(name);
				$.post("http://httpbin.org/post",
							{"name": name},
							function(data) {
								var myModal = $('#myModal');
								myModal.modal();
								myModal.find('.modal-body').text(data.form.name + '님 회원가입되었습니다.')
							});
		});
 	});