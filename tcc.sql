create database dbIventrack;
use dbIventrack;

create table tbProduto(
IDProduto int auto_increment primary key, 
nomeProduto varchar(50),
descProduto varchar(100),
precoProduto float
);


create table tbEmpresa(
IDEmpresa int auto_increment primary key,
nomeEmpresa varchar(50),
emailEmpresa varchar(50),
senhaEmpresa varchar(30)
);


create table tbEstoque(
IDEstoque int auto_increment primary key,
quantidade int,
IDProduto int,
FOREIGN KEY (IDProduto) REFERENCES tbProduto(IDProduto), 
IDEmpresa int,
FOREIGN KEY (IDEmpresa) REFERENCES tbEmpresa(IDEmpresa)
);


create table tbSaidaEstoque(
IDSaidaEstoque int auto_increment primary key,
dataSaida DATE,
quantProduto int,
IDProduto int,
FOREIGN KEY (IDProduto) REFERENCES tbProduto(IDProduto)
);


create table tbEntradaEstoque(
IDEntradaEstoque int auto_increment primary key,
dataEntrada DATE,
quantProduto int,
IDProduto int,
FOREIGN KEY (IDProduto) REFERENCES tbProduto(IDProduto)
);


create table tbUsuario(
IDUsuario int auto_increment primary key,
nomeUsuario varchar(100),
emailUsuario varchar(50),
senhaUsuario varchar(100),
isAdmin BOOLEAN,
IDEmpresa int,
FOREIGN KEY (IDEmpresa) REFERENCES tbEmpresa(IDEmpresa)
);--
