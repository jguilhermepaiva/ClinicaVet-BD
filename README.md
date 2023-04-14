# ClinicaVet-BD

<ul>
  <li> Projeto de Banco de Dados - SI
  </li>
    <li> Grupo: Alexandre, João Guilherme, Miguel, Shellyda 
  </li>
</ul>

## Projeto Conceitual 

![ProjetoConceitual](https://user-images.githubusercontent.com/38386145/232138446-2244e21c-854c-4c8a-b073-7f3f7b4f476b.png)

## Projeto Lógico 



```
Cliente (CPF, Nome, CEP, Número);
Telefone(CPF, Telefone)
        CPF -> Cliente(CPF);
Animal(CodAnimal, CPF, Nome, Raça, Sexo, dt_nascimento)
        CPF -> Cliente(CPF);
Clinica (CNPJ, Nome, Localização);
Desconto (Cupom, Valor);
Contratam (CPF, CNPJ, Cupom)
        CPF -> Cliente(CPF)
        CNPJ -> Clínica(CNPJ)
Cupom -> Desconto(Cupom);
Empregado (CodEmpregado, CNPJ, Telefone, Nome, Salario, CHEFE)
        CNPJ -> Clínica(CNPJ)
        CHEFE -> Empregado(CodEmpregado);
Graduado(CodEmpregado, Diploma, Função)
        CodEmpregado -> Empregado(CodEmpregado);
Tecnico(CodEmpregado, Função)
CodEmpregado -> Empregado(CodEmpregado);
Loja(CodLoja, CNPJ, Telefone, Endereço)
        CNPJ -> Clínica(CNPJ);
Serviço(CodServiço, CodCliente, Data, Tipo, Valor);
Produto(CodProduto, Marca, ValorUnitário, Tipo);
Oferecem(Data, CodServiço, CodProduto, CodLoja!)
        CodServiço -> Serviço(CodServiço)
        CodProduto -> Produto(CodProduto)
CodLoja -> Loja(CodLoja);
```
  
 
