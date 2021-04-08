# ---------------SCRAOPPER TJMG------------------------#
library(tidyverse)
library(httr)
library(rvest)
library(tjmg)
library(tjsp)


#A intenção é implmentar o pacote do github.com/jjesusfilho/tjmg com a busca de outros tribunais


tjmg_baixar_cjsg(busca = "recuperação judicial", diretorio= "stay_period/julgados")

# -------------- Baixando Metadados do Processo - Consulta Processual por número ---------------------------#

# Baixando HTMLs

tjmg_baixar_cposg<- 
  #A intenção é criar um map(.x= vetor de processos, f.=get) e cria o padrão de criação dos URLs para o GET baixar
  
  
  
  #os urls são padronizados. Essa função url_movimentação cria um vetor de links
  # a função é um map(.x=lista padronizada de urls, .f= GET(list))
  
url_movimentacao <- function(processos){
  
  #Deixano quieto os números dos processos
  p <- stringr::str_remove_all(processos, "\\D+") %>% 
    str_squish()%>%
    stringr::str_pad(width = 20, "left", "0")
  
  foro<- processos%>%
    stringr::str_extract("\\d{4}$")
  
  #função paste - cria um vetor de de URLS de consulta processual a partir do número do processo
    paste("https://www4.tjmg.jus.br/juridico/sf/proc_resultado.jsp?tipoPesquisa=1&txtProcesso=",
          p, "&comrCodigo=", foro, 
          "&nomePessoa=&tipoPessoa=X&naturezaProcesso=0&situacaoParte=X&codigoOAB=&tipoOAB=N&ufOAB=MG&numero=1&select=1&tipoConsulta=1&natureza=0&ativoBaixado=X&listaProcessos=",
          p, sep="")
    #chamadno o map
  #map2(.x =processos, .y=foro, .f= padronizadora_url_movimentacao())
    
    #purrr::map(urls , GET(urls)
}


viscode_rio_branco<- c("00020306220118130720", "00205215420108130720","0002030-62.2011.8.13.0720")

url_movimentacao(processos= viscode_rio_branco)







saadi_adv 
  
  
  tjsp::baixar_cposg
  
viscode_rio_branco<- c("00020306220118130720")


httr::GET(url = "https://www4.tjmg.jus.br/juridico/sf/proc_resultado.jsp?tipoPesquisa=1&txtProcesso=
                               00020306220118130720&comrCodigo=720
                               &nomePessoa=&tipoPessoa=X&naturezaProcesso=0&situacaoParte=X&codigoOAB=&tipoOAB=N&ufOAB=MG&numero=1&select=1&tipoConsulta=1&natureza=0&ativoBaixado=X&listaProcessos=
                               00020306220118130720")

visconde_rio_branco2<- read_html(viscode_rio_branco)




tjsp::
https://www4.tjmg.jus.br/juridico/sf/proc_resultado.jsp?tipoPesquisa=1&txtProcesso=04192089520078130720&comrCodigo=720&nomePessoa=&tipoPessoa=X&naturezaProcesso=0&situacaoParte=X&codigoOAB=&tipoOAB=N&ufOAB=MG&numero=1&select=1&tipoConsulta=1&natureza=0&ativoBaixado=X&listaProcessos=04192089520078130720