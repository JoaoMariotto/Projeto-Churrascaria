<?php
namespace Config;
use App\Controllers\Index\IndexController;

// Mapeamento de rotas para controladores
$rotas = [
    '/' => 'IndexController@index',
    '/carnes' => 'IndexController@carnes',
    '/acompanhamentos' => 'IndexController@acompanhamentos',
    '/salada' => 'IndexController@salada',
    '/bebidas' => 'IndexController@bebidas',
    '/doces' => 'IndexController@doces',
    '/contato' => 'IndexController@contato',
    '/pedido' => 'IndexController@pedido',
    '/processarFormulario' => 'IndexController@processarFormulario'
];

return $rotas;
?>