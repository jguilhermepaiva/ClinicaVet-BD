<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://user-images.githubusercontent.com/38386145/232138446-2244e21c-854c-4c8a-b073-7f3f7b4f476b.png">
    <img src="https://www.binarionet.com.br/wp-content/uploads/2021/08/banco-de-dados.png" alt="Logo" height='400'>
  </a>
  <h2 align="center">Veterinary clinic database</h2> 
  <h3 align="center">Database project with SQL</h3>

  <p align="center">
    CIn UFPE | April 2023 | Database
    <br />
    <a href="https://github.com/jguilhermepaiva/ClinicaVet-BD"><strong>Explore the docs »</strong></a>
    <br />
    <a target="_blank" href="https://www.canva.com/design/DAFghF8Jq1c/b5MhlJVJHdBZfIgMC41chA/edit?utm_content=DAFghF8Jq1c&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton"><strong>See Presentation slides »</strong></a>
    <br />
    <br />
  </p>
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
        <li><a href="#contributors">Contributors</a></li>
        <li><a href="#built-with">Built with</a></li>
        <li><a href="#files-structure">Files structure</a></li>
        <li><a href="#conceptual-project">Conceptual project</a></li>
        <li><a href="#logical-project">Logical project</a></li>
        <li><a href="#physical-project">Physical project</a></li>
        <li><a href="#contributing">Contributing</a></li>
        <li><a href="#contact">Contact</a></li>
  </ol>
</details>

#### Check ideation work in [Miro board](https://miro.com/app/board/uXjVP5xBx_M=/)

## Contributors

<table>
  <tr>
 <td align="center"><a href="https://github.com/jguilhermepaiva"><img src="https://avatars.githubusercontent.com/u/38386145?v=4" width="100px;" alt=""/><br /><sub><b>João Guilherme</b></sub></a><br/></td>
 
<td align="center"><a href="https://github.com/Shellyda"><img src="https://avatars.githubusercontent.com/u/69990297?v=4" width="100px;" alt=""/><br /><sub><b>Shellyda Barbosa</b></sub></a><br/></td>
    
<td align="center"><a href="https://github.com/alexandrevieiraleonardo"><img src="https://avatars.githubusercontent.com/u/29523630?v=4" width="100px;" alt=""/><br /><sub><b>Alexandre Vieira</b></sub></a><br/></td>
 </tr>
 </table>

### Built With

- [ SQL ](https://pt.wikipedia.org/wiki/SQL)
- [Oracle](https://livesql.oracle.com/)

## Files structure

/Projeto Conceitual

> Conceptual project png image and it EER file

/Projeto Físico

> Tables creation and population

/Projeto Lógico

> Logical project docs

/Consultas

> Database queries

/Funções e Procedimentos

> Database functions and procedures

## Conceptual project

![ProjetoConceitual](https://user-images.githubusercontent.com/38386145/232138446-2244e21c-854c-4c8a-b073-7f3f7b4f476b.png)

## Logical project

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

## Physical project

- [/Projeto Físico/TABELAS.sql](https://github.com/jguilhermepaiva/ClinicaVet-BD/blob/main/Projeto%20F%C3%ADsico/TABELAS.sql)
- [/Projeto Físico/POVOAMENTO.sql](https://github.com/jguilhermepaiva/ClinicaVet-BD/blob/main/Projeto%20F%C3%ADsico/POVOAMENTO.sql)

## Contributing

Any contributions you make are greatly appreciated.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/featureName`)
3. Commit your Changes (`git commit -m 'Add some featureName'`)
4. Push to the Branch (`git push origin feature/featureName`)
5. Open a Pull Request

## Contact

- Alexandre Vieira Leonardo - avl@cin.ufpe.br
- João Guilherme Pontes de Paiva - jgpp@cin.ufpe.br 
- Shellyda de Fátima Silva Barbosa - sfsb2@cin.ufpe.br

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/repo/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo.svg?style=for-the-badge
[forks-url]: https://github.com/github_username/repo/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo.svg?style=for-the-badge
[stars-url]: https://github.com/github_username/repo/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo.svg?style=for-the-badge
[issues-url]: https://github.com/github_username/repo/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo.svg?style=for-the-badge
[license-url]: https://github.com/github_username/repo/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/github_username
