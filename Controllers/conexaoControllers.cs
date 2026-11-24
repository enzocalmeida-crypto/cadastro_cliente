using ClienteApi.Services;
using Microsoft.AspNetCore.Mvc;

namespace ClienteApi.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ConexaoController : ControllerBase
{
    private readonly ConexaoBanco _conexaoBanco;

    public ConexaoController(ConexaoBanco conexaoBanco)
    {
        _conexaoBanco = conexaoBanco;
    }

    [HttpGet("testar")]
    public async Task<IActionResult> Testar()
    {
        try
        {
            bool conectado = await _conexaoBanco.TestarConexao();

            return Ok(new
            {
                mensagem = "Conexão com o PostgreSQL realizada com sucesso.",
                conectado = conectado
            });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new
            {
                mensagem = "Erro ao conectar com o PostgreSQL.",
                erro = ex.Message
            });
        }
    }
}