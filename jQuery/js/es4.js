$(document).ready(function(){
    $("#idem").click(function(){
        if($("#idem").is(':checked'))
        {
			$("#n2").val($("#n1").val());
			$("#c2").val($("#c1").val());
			$("#t2").val($("#t1").val());
			$("#i2").val($("#i1").val());
            $("#e2").val($("#e1").val());
        }
        else
        {
            $("#n2").val("");
			$("#c2").val("");
			$("#t2").val("");
			$("#i2").val("");
            $("#e2").val("");
        }
	});
});