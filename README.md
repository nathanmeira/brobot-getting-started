# 🤖 Brobot: Getting Started

> Leia atentamente as instruções abaixo e qualquer dúvida, entre em contato com o responsável do projeto.

Os seguintes projetos abaixo tem como objetivo a verificação e nivelamento de novos desenvolvedores que estão se juntando à equipe.

São três etapas e todas deverão ser enviadas através de um pull request neste repositório.

**Como enviar o seu código?**

1. Clone este repositório.
2. Crie seu projeto de acordo com as instruções descritas para cada etapa.
3. Crie uma branch com o seu primeiro e último nome. Ex: nathan_meira.
4. Faça um pull request para este projeto diretamente na branch master.
5. Envie uma mensagem indicando que finalizou as etapas.

Aguardamos seu commit! ☕


# Etapa 1: CRUD

### Projeto para criação de um CRUD utilizando Ruby On Rails, back-end e front-end.

- Criar projeto Person, aplicando o diagrama de classe da imagem _person.png_, que está na pasta "complementos".
- Criar método IMC e Full Name.
- Utilizar o database SQLite.

# Etapa 2: CRUD + API + DB

### Projeto para criação de um CRUD, consumindo a API designada e salvando informações no banco de dados relacional. 

- Criar projeto IBGE, conforme imagem _ibge.png_, que está na pasta "complementos".
- Ruby on Rails back-end somente API.
- Database: Postgres.
- API que deve ser utilizada: https://brasilapi.com.br/docs.
- Criar uma Task que irá consultar a API e popular a base de dados da aplicação.
- Criar uma Task que irá “printar” todos os Estados e seus relacionamentos por ordem alfabética no terminal.

# Etapa 3: Integração de microsserviços

### Criar um microsserviço utilizando o MongoDB (não relacional) e integrar com outro microsserviço utilizando algum banco relacional.

**Projeto Contas**

- Projeto back-end Ruby on Rails somente API
- database: Postgres
- A tabela Bank deve ser populada através da API https://brasilapi.com.br/docs
- Utilizar diagrama conforme imagem _ms.png_ que está na pasta "complementos".

**Projeto Eventos**

- Projeto back-end Ruby on Rails somente API
- database: MongoDB

**Integração dos projetos:**

- Todo evento que ocorrer no projeto Contas no modelo Person, deve notificar o projeto Eventos e criar um registro na coleção Events.

Exemplo:

```json
{ 
  "message": "Criado Person <name>",
  "operation": "insert"
}
```

**No projeto Contas:**

- Criar Task para popular a tabela Bank
- Criar Task que utilize as operações do CRUD no model Person (Incluindo associações com o model Bank)
- Criar Task que irá “printar” os Events do projeto Eventos em ordem de criação. Importante: o projeto Contas irá consumir a API do projeto Eventos.
