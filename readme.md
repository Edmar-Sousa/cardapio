

1. Requisitos Funcionais (o que o sistema deve fazer):
- [] Gerenciamento de Usuários
    - O sistema deve permitir registro de novos usuários (nome, e-mail, senha).
    - O sistema deve permitir login com autenticação segura (JWT).

- [] Gestão de Cardápios
    - O usuário deve poder escolher um modelo de layout para o cardápio.
    - O sistema deve permitir cadastro de itens (nome, descrição, preço, categoria).
    - O sistema deve permitir upload de imagens para os itens.

- [] Exibição do Cardápio
    - O sistema deve gerar um link público único para cada cardápio.
    - O visitante deve poder visualizar o cardápio sem precisar de login.
    - O cardápio deve ser exibido no modelo selecionado pelo dono.

2. Requisitos Não Funcionais (como o sistema deve se comportar)
    - Senhas devem ser armazenadas de forma criptografada.
    - Interface responsiva (funciona em celular e desktop).