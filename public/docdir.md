# `public`

Arquivos servidos como estão, sem passar pelo bundler. O navegador e o manifesto PWA pedem esses caminhos na raiz do site (`/favicon.ico`, `/logo.svg`, etc.).

## `favicon.ico`

Ícone da aba do navegador.

## `logo.svg`

Logotipo usado na geração dos ícones PWA (`npm run generate-pwa-assets`) e como marca visual estática.

## `apple-touch-icon-180x180.png`

Ícone de 180 px para “Adicionar à tela de início” no Safari/iOS.

## `pwa-64x64.png`

Ícone PWA de 64 px, referenciado no manifesto do `vite.config.js`.

## `pwa-192x192.png`

Ícone PWA de 192 px, usado em atalhos e na instalação do aplicativo.

## `pwa-512x512.png`

Ícone PWA de 512 px, versão grande da instalação.

## `maskable-icon-512x512.png`

Ícone de 512 px com área segura para máscaras de ícone do Android (o sistema pode recortar as bordas).

## `styles.css`

Folha de estilo global carregada pelo `index.html` antes do CSS gerado pelo Vite. Ajustes que precisam existir fora dos componentes React ficam aqui.
