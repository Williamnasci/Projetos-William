# Módulo 8 — Técnicas de Teste Ágil: Critérios de Aceitação em Gherkin

Exercício da EBAC (Módulo 8): a partir das 3 histórias de usuário do projeto
EBAC-SHOP, foi criado um arquivo `.feature` por funcionalidade, em Gherkin,
cobrindo os critérios de aceitação originais.

## Estrutura

```
modulo-8-tecnicas-teste-agil/
├── features/
│   ├── config.feature    (US-0001 — Configurar produto)
│   ├── login.feature     (US-0002 — Login na plataforma)
│   └── checkout.feature  (US-0003 — Tela de cadastro - Checkout)
└── README.md
```

## Mapeamento critério de aceitação → cenário

### US-0001 — Configurar produto (`config.feature`)

| Critério de aceitação original | Cenário(s) que cobre |
| --- | --- |
| Seleções de cor, tamanho e quantidade devem ser obrigatórias | "Tentar configurar produto sem selecionar a cor" / "...o tamanho" / "...a quantidade" |
| Deve permitir apenas 10 produtos por venda | "Incluir até 10 unidades do produto na mesma venda" / "Tentar incluir 11 unidades do produto na mesma venda" |
| Ao clicar no botão "limpar" deve voltar ao estado original | "Retornar ao estado original ao clicar no botão 'limpar'" |

### US-0002 — Login na plataforma (`login.feature`)

| Critério de aceitação original | Cenário(s) que cobre |
| --- | --- |
| Dados válidos → direcionado para a tela de checkout | "Login com usuário e senha válidos" |
| Campo inválido → mensagem "Usuário ou senha inválidos" | "Login com usuário inválido" / "Login com senha inválida" |

### US-0003 — Tela de cadastro - Checkout (`checkout.feature`)

| Critério de aceitação original | Cenário / linha de exemplo que cobre |
| --- | --- |
| Cadastro com todos os dados obrigatórios, marcados com asterisco | "Identificar os campos obrigatórios do cadastro" (asterisco) + linha 1 do Esquema (`preenchidos` / e-mail válido → sucesso) |
| E-mail com formato inválido → mensagem de erro | linha 2 do Esquema (`preenchidos` / `cliente@` → erro) |
| Campos vazios → mensagem de alerta | linha 3 do Esquema (`vazios` → alerta) |

Conforme observação da história original, este arquivo usa obrigatoriamente
`Esquema do Cenário` com `Exemplos`.

## Observações

- Onde o critério de aceitação original não define o texto exato de uma
  mensagem ou regra, o cenário valida apenas o comportamento/resultado
  descrito na história (ex.: produto não disponível, seleção continua
  obrigatória, limite permanece em 10 unidades, mensagem de erro/alerta
  exibida) — nenhum texto de mensagem foi inventado.
- A mensagem "Usuário ou senha inválidos" (US-0002) é a única com texto
  literal definido na história original, por isso é validada exatamente.

## Como executar

Os arquivos `.feature` descrevem comportamento (BDD) e não possuem, neste
exercício, automação de steps associada — a entrega pedida é a escrita dos
critérios de aceitação em Gherkin. Para editá-los/visualizá-los, recomenda-se
a extensão **Cucumber (Gherkin) Full Support** no VS Code.
