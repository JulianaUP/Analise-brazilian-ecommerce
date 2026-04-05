# Analise-brazilian-E-commerce
Analisando dataset de um ecommerce brasileiro ( primeiros passos em SQL e dados)
# Análise de Métodos de Pagamento - E-commerce

##Sobre o Projeto
Análise estratégica de rentabilidade e performance dos métodos de pagamento em dataset de e-commerce público do Kaggle.

**Fonte dos Dados**: [Dataset E-commerce Brazilian](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) - Olist Store

## Objetivos
- Analisar rentabilidade por método de pagamento
- Identificar oportunidades de otimização financeira
- Fornecer insights baseados em dados para tomada de decisão

## Principais Descobertas

### 🏆 Ranking de Rentabilidade:
| Método | Transações | Receita Total | Margem |
|--------|------------|---------------|---------|
| **Boleto** | 19,784 | R$ 2.8M | **98.16%** |
| **Cartão de Débito** | 1,529 | R$ 217K | **97.92%** |
| **Cartão de Crédito** | 76,795 | R$ 12.5M | **96.92%** |
| **Voucher** | 5,775 | R$ 379K | **92.00%** |

## 💡 Insights Estratégicos

### **Boleto - O Campeão de Rentabilidade**
- **Maior margem líquida**: 98.16%
- **Custo operacional baixo**: 1.5% + R$ 0.50 por transação
- **Recomendação**: Incentivar para compras acima de R$ 200

### **Cartão de Crédito - Volume vs Custo**
- **Domina 77% das transações**
- **Custo mais alto**: 2.9% + R$ 0.30
- **Oportunidade**: Negociar taxas com operadoras

### **Cartão de Débito - O Subutilizado**
- **Apenas 1.5% do volume total**
- **Margem excelente**: 97.92%
- **Estratégia**: Campanhas de cashback

### **Voucher - Atenção Necessária**
- **Margem mais baixa**: 92.00%
- **Custo alto**: 8% por transação
- **Ação**: Revisar programa de fidelidade

## Tecnologias Utilizadas
- **Banco de Dados**: PostgreSQL (via Supabase)
- **Análise**: SQL Avançado
- **Dataset**: Olist E-commerce (Kaggle)
- **Ferramentas**: Consultas diretas no banco

## 📈 Metodologia

### Queries Desenvolvidas:
1. **Análise de Rentabilidade** - Custos operacionais por método
2. **Distribuição de Transações** - Volume e valor médio
3. **Análise Comparativa** - Performance entre métodos

###  Pressupostos de Custos:
- **Cartão de Crédito**: 2.9% + R$ 0.30
- **Boleto**: 1.5% + R$ 0.50  
- **Débito**: 1.9% + R$ 0.25
- **Voucher**: 8.0% (taxa fixa)

## 📁 Estrutura do Projeto
analise-ecommerce/
├── 📄 README.md
├── 📁 queries/
│ ├── 📄 analise_rentabilidade.sql
│ ├── 📄 distribuicao_metodos.sql
└── 📁 resultados/
└── 📄resultados_analise_rentabilidade.png
└── 📄resultados_distribuição_metodos.png

text

## Como Reproduzir a Análise

1. **Acesse o Dataset**: 
   ```bash
   https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce
Configure o Banco:

Importe os CSV para PostgreSQL/Supabase

Execute as queries da pasta queries/

Analise os Resultados:

Compare com as métricas encontradas

Adapte os custos para sua realidade

Resultados Detalhados
Distribuição de Transações:
Cartão de Crédito: 77.4%

Boleto: 19.9%

Voucher: 5.8%

Débito: 1.5%

Valor Médio por Transação:
Cartão de Crédito: R$ 163.32

Boleto: R$ 145.03

Débito: R$ 142.57

Voucher: R$ 65.70

Contribuição
Contribuições são bem-vindas! Areas de melhoria:

Análise de sazonalidade

Segmentação por categoria de produto

Análise de custos mais detalhada

📄 Licença
Este projeto de análise utiliza dados públicos do Kaggle sob licença CC BY-NC-SA 4.0.

Desenvolvido para fins educacionais e analíticos
