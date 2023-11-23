<?php
namespace App\Models;
use App\Controllers\BD\Conexao;

class Usuarios
{
    private $id;
    private $nome;
    private $endereco;
    private $numero_casa;
    private $complemento;
    private $telefone;
    private $posicao;

    public function __get($attr)
    {
        return $this->$attr;
    }

    public function __set($attr, $value)
    {
        $this->$attr = $value;
    }
    
    //Teste
    public function listar()
    {
        // Cria uma instância da classe Conexao
        $conexao = new Conexao();

        // Obtém a conexão
        $conn = $conexao->conectar();

        // Prepara e executa a consulta
        $stmt = $conn->prepare("SELECT * FROM usuarios");
        $stmt->execute();

        // Retorna os resultados
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }
}
?>