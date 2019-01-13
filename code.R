#******************************************************************************#
#                                                                              #
#                    Lab 3 - Data Acquisition & Analysis                       #
#                                                                              #
#                    Antoni Diaz Salvador - Data Driven Securty                #
#                                                                              #
#******************************************************************************#

## Crawling y Scrapping
if(!require("httr")){
  install.packages("httr")
  library("httr")
}
if(!require("xml2")){
  install.packages("xml2")
  library("xml2")
}
if(!require("XML")){
  install.packages("XML")
  library("XML")
}

web <- "https://www.mediawiki.org/wiki/MediaWiki"

### 1.1 Obtención de la página web


get_page <- function(web) {
  datos <- httr::GET(web)
  content <- httr::content(datos, as="text")
  xml <- xml2::read_html(content)

  return (xml)

}

### 1.2 Analisis de el contenido de la web

get_title <- function(xml) {
  title <- xml2::xml_text(xml2::xml_find_first(xml, "//head/title/text()"))

  return (title)
}
print(title)
### 1.3.	Extracción de enlaces

get_links <- function(xml) {
  links <- xml2::xml_find_all(xml, "//a")

  return (links)
}


### 1.4 Exploración de enlaces

### Gráficos en R

### 2.1 Histograma

### 2.2 Un gráfico de barras

### 2.3 Pie Chart

