$(document).ready(function(){
    $("#circle").css({"position":"absolute","top":"200px", "left":"200px"});

    $("#circle").on("mouseenter",function(){
        var top=parseInt(Math.random()*100);
        var left=parseInt(Math.random()*100);
        var right=parseInt(Math.random()*100);
        var bottom=parseInt(Math.random()*100);

        var spostamentoVerticale;
        var spostamentoOrizzontale;
        if(top>bottom)
        {
            spostamentoVerticale=top;
        }
        else
        {
            spostamentoVerticale=-bottom;
        }

        if(left>right)
        {
            spostamentoOrizzontale=left;
        }
        else
        {
            spostamentoOrizzontale=-right;
        }

        var bodyHeight=$("body").height();
        var bodyWidth=$("body").width();

        var circleTop=parseInt($("#circle").css("top"));
        var circleLeft=parseInt($("#circle").css("left"));


        if((circleTop+spostamentoVerticale)>0 && (circleTop+spostamentoVerticale)<bodyHeight && (circleLeft+spostamentoOrizzontale)>0 && (circleLeft+spostamentoOrizzontale)<bodyWidth){
            $("#circle").animate({top:"+="+spostamentoVerticale, left:"+="+spostamentoOrizzontale});
        }
        
    });


});