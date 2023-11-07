#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build
WORKDIR /src
COPY ["WAD_00011347.csproj", "WAD_00011347/"]
RUN dotnet restore "WAD_00011347/WAD_00011347.csproj"
WORKDIR "/src/WAD_00011347"
COPY . .
RUN dotnet build "WAD_00011347.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "WAD_00011347.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "WAD_00011347.dll"]