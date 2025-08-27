# Centro Educacional Olhar de Bastet

![olhar-de-bastet-logo](./informacoes-gerais/bastet-logo.png)

**Olhar de Bastet** é uma rede de centros educacionais fictícios de ensino fundamental e médio que está em um momento de decisão estratégica: reestruturar seu regime de pagamento para garantir sustentabilidade financeira sem perder de vista sua missão de proteger e expandir o conhecimento dos alunos, e respeitando o corpo profissional.

Para isso, a instituição mobilizou uma equipe de dados para analisar suas bases de dados de pagamento para avaliar o impacto de cada regime utilizado atualmente e como unifica-los em um único modelo.

Após uma conversa extensa, foram definidos alguns [objetivos e KPIs]() essenciais para análise. A análises serão limitadas focalizando as diferenças por escola (de A até AI), por função (regência e não-regência) e por mês (fev, mar, abr).

---
### **Modelos de Pagamento**

**Modelo 1 - contrato fixo (cf)**

É o modelo de pagamento que consiste em ter um contrato fixo mensal com o funcionário. É mais previsível, menos flexível e mais seguro para o profissional

**Modelo 2 - contrato por hora-aula (ha)**

É o modelo de pagamento que contabiliza a carga horária efetivamente realizada por cada professor. É menos previsível, mais flexível e mais inseguro para os profissionais, podendo variar mês a mês.

---
### **Recortes de Análise**

**Por escola**

Serão consideradas 32 escolas nomeadas por letras do alfabeto de A a Z (Escola A, Escola B...), seguidas por duas letras em ordem alfabética, iniciando com A (Escola AA, Escola AB) até Escola AI.

**Por Função**

Serão consideradas as funções de Regência (inclui profisisonais efetivamente em sala de aula) e Não-regência (incluindo profissionais que trabalhem em áreas como SOE, Coordenação e Supervisão).

**Por mês**

Serão considerados os meses de Fevereiro, Março e Abril, que é o primeiro trimestre efetivamente lecionado.

---
Para que toda a equipe tenha acesso e acompanhe o desenvolvimento desse projeto, este repositório foi criado com a seguinte estrutura:

- Na pasta `data` é possível encontrar os dados em formato csv puro e já limpo.
- Na pasta `análises` é possível encontrar os códigos `.ypinb` utilizados nas análises e os relatórios finais.
- Na pasta `dashboards` é possível encontrar o código completo do deploy do dashboard no streamlit.
- Na pasta `informacoes_gerais` é possível ver os documentos construídos durante as conversas com stakeholders e designs da empresa.

---
Faremos um único dashboard que contenha as seguintes abas:

- Métricas gerais
- Análise financeira atual
- Comparação mensal entre modelos
- Comparação por escola entre modelos
- Comparação por função entre modelos
- Ações recomendadas


