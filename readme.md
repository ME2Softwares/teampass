## Para rodar o projeto execute os seguintes passos:

- 1º Crie o arquivo .env
`cp .env.example .env`
- 2º Preencha as variáveis no arquivo .env

- 3º Execute o script teampass-docker-start.sh
`./teampass-docker-start.sh`
**NOTE:** se o arquivo não executar, dê permissão de execução: ``chmod +x teampass-docker-start.sh``

- 4º Suba os containers docker
`docker-compose up -d`

- 5º Siga as instruções para configuração do [TeamPass](https://teampass.readthedocs.io/en/latest/)