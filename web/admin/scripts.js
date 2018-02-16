$(document).ready(function(){
    PNotify.prototype.options.styling = "bootstrap3";

    $('.link-tooltip').tooltip();

    //cada vez q de click en el boton de cambiar contraseña
    $('.change_pass').click(function(){
        $('#form_change_password').attr('action',$(this).attr('data-url'));
        $('#change_password').modal();
    });

    //verificar q las dos contraseñas sean iguales
    $('#send_form_pass').click(function(event){
        event.preventDefault();
        if($("input[name='first_password']").val()!= $("input[name='second_password']").val()){
            new PNotify({
                title: 'Atencion',
                text : 'Sus contraseñas no coiciden',
                type : 'error'
            });
        }else{
            $('#form_change_password').submit();
            $('#change_password').modal('hide');
            $("input[name='first_password']").val('');
            $("input[name='second_password']").val('');
        }
    });

    //cuando de el click en el boton eliminar
    $('.link-delete').click(function(){
        var $modal = $('#modal-delete')
        $modal.modal();
        $modal.find('#delete').attr('href',$(this).attr('data-url'));
    });
	
	$('.xdebug-error').remove();
});

//si es la url de los reportes pendientes entonces hago el timer
switch(window.location.pathname){
    case Routing.generate('reportes_pendientes',false):
    case Routing.generate('reportes_resueltos',false) :
    case Routing.generate('reporte_index',false) :
        window.setInterval(function(){window.location.reload()},120000);
        break;
}
//if(Routing.generate('reportes_pendientes',false)==window.location.pathname){
//    window.setInterval(function(){window.location.reload()},420000);
//}
