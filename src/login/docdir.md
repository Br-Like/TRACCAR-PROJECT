# `src/login`

Telas de quem ainda não tem sessão, mais o visual compartilhado dessas páginas. As rotas estão em `Navigation.jsx`: `/login`, `/register`, `/reset-password`, `/change-server`.

## `LoginPage.jsx`

Formulário de e-mail e senha. Envia `POST /api/session` e, se o servidor permitir, oferece cadastro, recuperação de senha, OpenID e login por token vindo do aplicativo nativo. Também trata servidor novo (`newServer`), em que o primeiro usuário vira administrador.

## `RegisterPage.jsx`

Cadastro de usuário (`POST /api/users`) quando o servidor deixa o registro aberto. Depois do sucesso, segue para a sessão autenticada.

## `ResetPasswordPage.jsx`

Pede o envio do e-mail de redefinição (`/api/password/reset`) e, com o token na URL, grava a senha nova (`/api/password/update`).

## `ChangeServerPage.jsx`

Usada no aplicativo móvel para apontar a WebView para outro servidor Traccar (URL gravada no lado nativo). Não faz parte do fluxo normal do navegador.

## `LoginLayout.jsx`

Moldura das telas de login: fundo, cartão central e área para o formulário filho. Todas as páginas desta pasta renderizam dentro dele.

## `LogoImage.jsx`

Desenha o logotipo (arquivo SVG ou texto/cor vindos dos atributos do servidor) no topo do cartão de login.
