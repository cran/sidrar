## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, collapse = TRUE, comment = "#>")

## ----eval = FALSE-------------------------------------------------------------
# install.packages("sidrar")

## ----eval = FALSE-------------------------------------------------------------
# # install.packages("pak")
# pak::pak("rpradosiqueira/sidrar")

## ----eval = FALSE-------------------------------------------------------------
# library(sidrar)
# 
# search_sidra("IPCA")
# search_sidra(c("contas", "nacionais"))

## ----eval = FALSE-------------------------------------------------------------
# metadata <- info_sidra(7060)
# names(metadata)
# metadata$variable
# metadata$classific_category
# metadata$geo

## ----eval = FALSE-------------------------------------------------------------
# info_sidra(7060, wb = TRUE)

## ----eval = FALSE-------------------------------------------------------------
# catalog <- sidra_catalog()
# metadata <- sidra_metadata(7060)
# periods <- sidra_periods(7060)
# locations <- sidra_locations(7060, "N1")
# 
# names(metadata)
# metadata$variables
# metadata$classifications
# metadata$categories

## ----eval = FALSE-------------------------------------------------------------
# ipca <- get_sidra(
#   x = 7060,
#   variable = 63,
#   period = c(last = 12),
#   geo = "City",
#   geo.filter = list(City = 5002704),
#   classific = "c315",
#   category = list(7169)
# )

## ----eval = FALSE-------------------------------------------------------------
# get_sidra(
#   x = 7060,
#   variable = 63,
#   period = "last",
#   geo = "City",
#   geo.filter = list(State = 50),
#   classific = "c315",
#   category = list(7169)
# )

## ----eval = FALSE-------------------------------------------------------------
# query <- sidra_query(
#   x = 7060,
#   variable = 63,
#   period = sprintf("2024%02d", 1:12),
#   geo = "City",
#   geo.filter = list(City = 5002704),
#   classific = "c315",
#   category = list(7169)
# )
# 
# query$url
# sidra_plan(query)

## ----eval = FALSE-------------------------------------------------------------
# batches <- sidra_split(query, by = "period", size = 6)
# data <- sidra_collect(batches, provenance = TRUE)
# sidra_provenance(data)

## ----eval = FALSE-------------------------------------------------------------
# sidra_query(1612, geo_view = 44, classific = character())
# sidra_query(
#   1612,
#   geo = "State",
#   geo.filter = list(c(20, 34)),
#   include_extinct = TRUE,
#   classific = character()
# )

## ----eval = FALSE-------------------------------------------------------------
# get_sidra(
#   api = "/t/7060/n1/all/v/63/p/last/c315/7169"
# )

## ----eval = FALSE-------------------------------------------------------------
# get_sidra(
#   api = paste0(
#     "https://apisidra.ibge.gov.br/values/",
#     "t/7060/n1/all/v/63/p/last/c315/7169"
#   )
# )

## ----eval = FALSE-------------------------------------------------------------
# raw <- get_sidra(
#   api = "/t/1849/n3/all/v/811/p/2018/c12762/all",
#   value_type = "character"
# )

## ----eval = FALSE-------------------------------------------------------------
# both <- get_sidra(
#   api = "/t/1849/n3/all/v/811/p/2018/c12762/all",
#   value_type = "both"
# )

## ----eval = FALSE-------------------------------------------------------------
# options(
#   sidrar.timeout = 120,
#   sidrar.retries = 4
# )

## ----eval = FALSE-------------------------------------------------------------
# metadata <- sidra_metadata(7060, cache = TRUE)
# sidra_cache_info()
# sidra_cache_clear()

