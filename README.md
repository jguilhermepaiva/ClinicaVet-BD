# ClinicaVet-BD

<ul>
  <li> Projeto de Banco de Dados - SI
  </li>
    <li> Grupo: Alexandre, João Guilherme, Miguel, Shellyda 
  </li>
</ul>

<h1> Projeto Conceitual </h1>

![ProjetoConceitual](https://user-images.githubusercontent.com/38386145/232138446-2244e21c-854c-4c8a-b073-7f3f7b4f476b.png)

## Projeto Lógico 



```
Cliente (CPF, Nome, CEP, Número);<br/>
Telefone(CPF, Telefone)<br/>
        CPF -> Cliente(CPF);<br/>
Animal(CodAnimal, CPF, Nome, Raça, Sexo, dt_nascimento)<br/>
        CPF -> Cliente(CPF);<br/>
Clinica (CNPJ, Nome, Localização);<br/>
Desconto (Cupom, Valor);<br/>
Contratam (CPF, CNPJ, Cupom)<br/>
        CPF -> Cliente(CPF)<br/>
        CNPJ -> Clínica(CNPJ)<br/>
Cupom -> Desconto(Cupom);<br/>
Empregado (CodEmpregado, CNPJ, Telefone, Nome, Salario, CHEFE)<br/>
        CNPJ -> Clínica(CNPJ)<br/>
        CHEFE -> Empregado(CodEmpregado);<br/>
Graduado(CodEmpregado, Diploma, Função)<br/>
        CodEmpregado -> Empregado(CodEmpregado);<br/>
Tecnico(CodEmpregado, Função)<br/>
CodEmpregado -> Empregado(CodEmpregado);<br/>
Loja(CodLoja, CNPJ, Telefone, Endereço)<br/>
        CNPJ -> Clínica(CNPJ);<br/>
Serviço(CodServiço, CodCliente, Data, Tipo, Valor);<br/>
Produto(CodProduto, Marca, ValorUnitário, Tipo);<br/>
Oferecem(Data, CodServiço, CodProduto, CodLoja!)<br/>
        CodServiço -> Serviço(CodServiço)<br/>
        CodProduto -> Produto(CodProduto)<br/>
CodLoja -> Loja(CodLoja);<br/>
```
  
 
