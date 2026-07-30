# InformaTech Full Stack

Projeto com aplicativo React Native/Expo e API Node.js.

## Backend intermediário e didático

Tecnologias principais: TypeScript, Express, TypeORM, MySQL, JWT, bcrypt, Zod e
Swagger. A arquitetura possui controllers, services e repositories reais.

**Não utiliza migrations:** o TypeORM cria as tabelas automaticamente com
`synchronize: true`. Consulte `backend/README-BACKEND.md` para executar.

## Pastas

- `backend`: API REST e documentação Swagger.
- `mobile`: aplicativo React Native com Expo Router.


## Melhorias da versão 1.1
- CRUD de zonas de risco circulares persistidas no MySQL.
- Nível de inundação: baixo, moderado, alto ou crítico.
- Criação de círculo por clique, arraste e soltura no mapa.
- Somente ADMIN pode criar, editar ou excluir zonas.
- Todos os usuários autenticados podem visualizar as zonas.
- Campos de senha com botão para mostrar/ocultar.
- Validação de e-mail no app e no backend com Zod.
- Splash screen configurada com imagem.
- TypeORM com `synchronize: true`, sem migrations.

## Criar o administrador
No backend, revise os campos `ADMIN_*` do arquivo `.env` e execute:
```bash
npm run create-admin
```
Depois entre no aplicativo com o e-mail e a senha definidos. Troque a senha padrão antes de publicar.


## Zonas de risco no banco

No ambiente de desenvolvimento, o backend agora cria/atualiza automaticamente a tabela `risk_zones` ao iniciar. Para salvar uma zona:

1. Inicie o MySQL.
2. Configure `backend/.env`.
3. Execute `npm run dev` dentro de `backend`.
4. Entre no aplicativo com uma conta `ADMIN`.
5. Abra o mapa, informe os dados, posicione a zona e pressione **Salvar**.

A zona é persistida no MySQL e recarregada no mapa após o salvamento.
