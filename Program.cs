using ClienteApi.Services;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();

builder.Services.AddSingleton<ConexaoBanco>();

var app = builder.Build();

app.UseHttpsRedirection();

app.MapControllers();

app.Run();