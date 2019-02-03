

	//Somente Numero

	function somenteNumero(e){
	 var tecla=(window.event)?event.keyCode:e.which;   
    if((tecla>47 && tecla<58)) return true;
    else{
    	if (tecla==8 || tecla==0) return true;
	else  return false;
    }
   }


  // Somente Letras

function letras(e){
	var tecla=new Number();
	if(window.event) {
		tecla = e.keyCode;
	}
	else if(e.which) {
		tecla = e.which;
	}
	else {
		return true;
	}
  if((tecla >= "33") && (tecla <= "64")){
		return false;
	}
	if((tecla >= "91") && (tecla <= "96")){
		return false;
	}
	if((tecla >= "123") && (tecla <= "9830")){
		return false;
	}
}


 //Validar E-mail

function ValidaEmail(){
  var obj = eval("document.forms[0].Email");
  var txt = obj.value;
  if ((txt.length != 0) && ((txt.indexOf("@") < 1) || (txt.indexOf('.') < 7))){
  	alert('Email incorreto');
	obj.focus();
  }
  
}


//Nivel Senha

        function progress(percent, $element, velocity) {
           percent = percent >= 100 ? 100 : percent;
           var progressBarWidth = percent * $element.width() / 100;
           $element.find('div').stop().animate({ width: progressBarWidth }, velocity, "linear").html(percent + "% ");
        }
        
        $('#inputSenha').on('input', function(){
          var value = $(this).val();
          var progressValue = $('#progress div');
          var color, percent = 0;
        if(value.length <= 5){
            color = "red";
            percent = 25;
        }else if(value.length <= 10){
            color = "yellow";
            percent = 50;
        }else{
            color = "#3c948b";
            percent = 100;
        }
        progress(percent, $('#progress'), 300);
        progressValue.css("background", color);
        $('#progress').css("border", "1px solid " + color);
        })
        
   //Mascara Moeda
          function moeda(a, e, r, t) {
            let n = ""
              , h = j = 0
              , u = tamanho2 = 0
              , l = ajd2 = ""
              , o = window.Event ? t.which : t.keyCode;
            if (13 == o || 8 == o)
                return !0;
            if (n = String.fromCharCode(o),
            -1 == "0123456789".indexOf(n))
                return !1;
            for (u = a.value.length,
            h = 0; h < u && ("0" == a.value.charAt(h) || a.value.charAt(h) == r); h++)
                ;
            for (l = ""; h < u; h++)
                -1 != "0123456789".indexOf(a.value.charAt(h)) && (l += a.value.charAt(h));
            if (l += n,
            0 == (u = l.length) && (a.value = ""),
            1 == u && (a.value = "0" + r + "0" + l),
            2 == u && (a.value = "0" + r + l),
            u > 2) {
                for (ajd2 = "",
                j = 0,
                h = u - 3; h >= 0; h--)
                    3 == j && (ajd2 += e,
                    j = 0),
                    ajd2 += l.charAt(h),
                    j++;
                for (a.value = "",
                tamanho2 = ajd2.length,
                h = tamanho2 - 1; h >= 0; h--)
                    a.value += ajd2.charAt(h);
                a.value += r + l.substr(u - 2, u)
            }
            return !1
        }
  
