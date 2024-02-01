select * from unidades;

select * from produto;

Update produto set produto_status_id = 1; /* Ativo */

Update produto set unidades_Codigo = 58; /* UN */

Update produto set e_grupo_Codigo = 1; /* Produtos */

Update produto set e_tipoitem_Codigo = "00" where e_tipoitem_Codigo is null;

Update produto set ICMNCMGenero = 60 where ICMNCM = 6029090;
select * from produto where ICMNCMGenero is null;

Update produto set ICMNCMGenero = 70 where ICMNCM like '70%%%%%%';
select * from produto where ICMNCMGenero is null;

update produto set ICMOrigemEntrada = 0, 
e_cfoppadraoEntrada_id = 3, 
e_cfoppadraoSaida_id = 1, 
spedcstipi_Entrada_CST = 49,
spedcstipi_Saida_CST = 99,
IPICodigoEnquadramentoLegal = 999,
tabelaFiscalpadraoicmsst_Codigo = 1,
tabelafiscalpadraoicms_Codigo = 1,
UsarPercentuaisIBPT = 1
where id > 0;


update produto set ICMNCMGenero = substr(ICMNCM, 1,2);



/*------------------------------------------------------------------------------------*/


/* UNIDADES */

1	AMPOLA	AMPOLA
2	BALDE	BALDE
3	BANDEJ	BANDEJA
4	BARRA	BARRA
5	BISNAG	BISNAGA
6	BLOCO	BLOCO
7	BOBINA	BOBINA
8	BOMB	BOMBONA
9	CAPS	CAPSULA
10	CART	CARTELA
11	CT	CENTO
12	CJ	CONJUNTO
13	CM	CENTIMETRO
14	CM2	CENTIMETRO QUADRADO
15	CX	CAIXA
16	CX2	CAIXA COM 2 UNIDADES
17	CX3	CAIXA COM 3 UNIDADES
18	CX5	CAIXA COM 5 UNIDADES
19	CX10	CAIXA COM 10 UNIDADES
20	CX15	CAIXA COM 15 UNIDADES
21	CX20	CAIXA COM 20 UNIDADES
22	CX25	CAIXA COM 25 UNIDADES
23	CX50	CAIXA COM 50 UNIDADES
24	CX100	CAIXA COM 100 UNIDADES
25	DISP	DISPLAY
26	DZ	DUZIA
27	EMBAL	EMBALAGEM
28	FD	FARDO
29	FOLHA	FOLHA
30	FRASCO	FRASCO
31	GL	GALAO
32	GF	GARRAFA
33	GR	GRAMAS
34	JG	JOGO
35	KG	QUILOGRAMA
36	KIT	KIT
37	LTA	LATA
38	L	LITRO
39	M	METRO
40	M2	METRO QUADRADO
41	M3	METRO CUBICO
42	MIL	MILHEIRO
43	ML	MILILITRO
44	PCT	PACOTE
45	PALETE	PALETE
46	PAR	PARES
47	PC	PECA
48	PT	POTE
49	K	QUILATE
50	RESMA	RESMA
51	RL	ROLO
52	SC	SACO
53	SLA	SACOLA
54	TAMBOR	TAMBOR
55	TANQUE	TANQUE
56	TON	TONELADA
57	TUBO	TUBO
58	UN	UNIDADE
59	VASIL	VASILHAME
60	VD	VIDRO
		


/*------------------------------------------------------------------------------------*/
use bohm;

select * from bohm.notaeletronica where nNF >= 35294
order by nNF ;

select notaeletronica_id, vPag from bohm.notaeletronica_pag where tPag != 90;

select * from bohm.notaeletronica_produtos where produto_pComissao > 0;


select nNF, ntP.vPag from notaeletronica as nt
inner join notaeletronica_pag as ntP
on nt.id = ntP.notaeletronica_id
where tpag != 90
order by nNF ASC;



/*------------------------------------------------------------------------------------*/

select * from produto;

Update produto set PrecoPadraoVenda = ValorVendaPadrao;
Update produto SET SubDescricao = DescricaoFiscal;

UPDATE produto SET 
e_grupo_Codigo = 1,
e_tipoitem_Codigo = '00',
ICMOrigemEntrada = 0,
e_cfoppadraoEntrada_id = 3,
e_cfoppadraoSaida_id = 1, 
tabelaFiscalpadraoicmsst_Codigo = 1,
tabelafiscalpadraoicms_Codigo = 1,
spedcstipi_Entrada_CST = 49,
spedcstipi_Saida_CST = 99,
IPICodigoEnquadramentoLegal = 999,
UsarPercentuaisIBPT = 1;


/* ------------------------------------------------------------------------------------*/
update clientes set 
clientesFisica = 0,
clientesJuridica = 1,
clientesEndereco = 'FARROUPILHA',
clientesEnderecoNumero = 0,
clientesEnderecoBairro = 'FARROUPILHA',
clientesEnderecoCidade = '4307906',
clientesEnderecoxMun = 'FARROUPILHA',
clientesEnderecoCEP = 95180000,
clientesEnderecoUF = 'RS',
clientesDataCadastro = '2024-01-24 08:00:00',
clientesStatus = 1,
clientesEndereco_cPais = 1058;