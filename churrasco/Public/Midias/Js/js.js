$(document).ready(() => {
    $("#btn-carnes").mouseenter(function () {
        var fotos = $('#fotos');
       fotos.find('img').remove();
                
       // Cria dinamicamente um novo elemento img \\
       var imagem1 = $('<img>').attr('src', '../Midias/Imgs/Logo.png').attr('width', '500px');
       var imagem2 = $('<img>').attr('src', '../Midias/Imgs/Logo.png').attr('width', '500px');
       
       fotos.append(imagem1, imagem2); // Adiciona o novo elemento img à div fotos \\

       $("#btn-carnes").click(function () {
            window.location.href = '/carnes'; 
        });
    });
    $("#btn-carnes").mouseleave(function () {
        var fotos = $('#fotos');
       fotos.find('img').remove();
    });
    $("#btn-acomp").mouseenter(function () {
        var fotos = $('#fotos');
       fotos.find('img').remove();
                
       // Cria dinamicamente um novo elemento img \\
       var imagem1 = $('<img>').attr('src', '../Midias/Imgs/Logo.png').attr('width', '500px');
       var imagem2 = $('<img>').attr('src', '../Midias/Imgs/Logo.png').attr('width', '500px');
       
       fotos.append(imagem1, imagem2); // Adiciona o novo elemento img à div fotos \\

       $("#btn-acomp").click(function () {
            window.location.href = '/acompanhamentos'; 
        });
    });
    $("#btn-acomp").mouseleave(function () {
        var fotos = $('#fotos');
       fotos.find('img').remove();
    });
    $("#btn-salada").mouseenter(function () {
        var fotos = $('#fotos');
       fotos.find('img').remove();
                
       // Cria dinamicamente um novo elemento img \\
       var imagem1 = $('<img>').attr('src', '../Midias/Imgs/Logo.png').attr('width', '500px');
       var imagem2 = $('<img>').attr('src', '../Midias/Imgs/Logo.png').attr('width', '500px');
       
       fotos.append(imagem1, imagem2); // Adiciona o novo elemento img à div fotos \\

       $("#btn-salada").click(function () {
            window.location.href = '/salada'; 
        });
    });
    $("#btn-salada").mouseleave(function () {
        var fotos = $('#fotos');
       fotos.find('img').remove();
    });
    $("#btn-bebidas").mouseenter(function () {
        var fotos = $('#fotos');
       fotos.find('img').remove();
                
       // Cria dinamicamente um novo elemento img \\
       var imagem1 = $('<img>').attr('src', '../Midias/Imgs/Logo.png').attr('width', '500px');
       var imagem2 = $('<img>').attr('src', '../Midias/Imgs/Logo.png').attr('width', '500px');
       
       fotos.append(imagem1, imagem2); // Adiciona o novo elemento img à div fotos \\

       $("#btn-bebidas").click(function () {
            window.location.href = '/bebidas'; 
        });
    });
    $("#btn-bebidas").mouseleave(function () {
        var fotos = $('#fotos');
       fotos.find('img').remove();
    });
    $("#btn-doces").mouseenter(function () {
        var fotos = $('#fotos');
       fotos.find('img').remove();
                
       // Cria dinamicamente um novo elemento img \\
       var imagem1 = $('<img>').attr('src', '../Midias/Imgs/Logo.png').attr('width', '500px');
       var imagem2 = $('<img>').attr('src', '../Midias/Imgs/Logo.png').attr('width', '500px');
       
       fotos.append(imagem1, imagem2); // Adiciona o novo elemento img à div fotos \\

       $("#btn-doces").click(function () {
            window.location.href = '/doces'; 
        });
    });
    $("#btn-doces").mouseleave(function () {
        var fotos = $('#fotos');
       fotos.find('img').remove();
    });
});