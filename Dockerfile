# Use a imagem de runtime do .NET Core para executar a aplicação
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS runtime
WORKDIR /app

# Copie os arquivos compilados (gerados no buildspec.yml) para o diretório /app
COPY out ./

# Exponha a porta em que o aplicativo ASP.NET vai rodar
EXPOSE 80

# Defina o ponto de entrada para o aplicativo
ENTRYPOINT ["dotnet", "MeuSite.dll"]
