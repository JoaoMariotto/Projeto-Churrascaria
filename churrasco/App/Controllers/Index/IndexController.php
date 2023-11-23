<?php
namespace App\Controllers\Index;
use App\Models\Usuarios;
use Twig\Environment;

class IndexController{
    private $twig;

    public function __construct(Environment $twig) {
        $this->twig = $twig;
    }
    public function index() {
        echo $this->twig->render('index.twig');
    }
    public function carnes() {
        echo $this->twig->render('carnes.twig');
    }
    public function acompanhamentos() {
        echo $this->twig->render('acompanhamentos.twig');
    }
    public function salada() {
        echo $this->twig->render('salada.twig');
    }
    public function bebidas() {
        echo $this->twig->render('Bebidas.twig');
    }
    public function doces() {
        echo $this->twig->render('doces.twig');
    }
    public function contato() {
        echo $this->twig->render('contato.twig');
    }
    public function pedido() {
        echo $this->twig->render('pedido.twig');
    }
    public function processarFormulario() {
        print_r($_POST['nome']);
    }
}
?>