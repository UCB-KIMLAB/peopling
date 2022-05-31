#' add_Bubble_Cluster
#'
#' This is a in-house leaflet extension to draw one cluster bubble based on the given column and its value.
#'
#' @param m leaflet map object.
#' @param data your raw data to use. it should be a data frame
#' @param lng `column name` for longitude. WGS84 coordinate.
#' @param lat `column name` for latitude.  WGS84 coordinate.
#' @param method `character` argument which describe the way to calculate the circle's position. choose between mean andmedian.
#' @param label label `character` which used in the inner circle.
#' @param FiltColName
#' @param FiltColVal
#' @param InnerCircle require a `list` object which contains the circle's usage[boolin], radius[numeric], stroke[numeric], alpha[numeric], and color[character].
#' @param OuterCircle require a `list` object same as InnerCircle parameter.
#' @import leaflet
#' @import tidyverse
#' @examples
#'
#' @export


add_Bubble_Cluster <-
  function(m=.data,
           data,
           lng, lat, method="mean",
           label,
           FiltColName,
           FiltColVal,
           InnerCircle=list(use=T,radius=15,weight=0,alpha=0.5,color="#FF0000",fill="#FF0000"),
           OuterCircle=list(use=T,radius=20,weight=0,alpha=0.4,color="#FF0000",fill="#FF0000"),
           ...
           ) {
  ## check variables
  if(! "leaflet" %in% class(m)) {stop("You need a leaflet object (m) to call the function.")}         # check leaflet object.

  lng <- enquo(lng); lat <- enquo(lat) ; FiltColName <- enquo(FiltColName)
  if(!(method %in% c("mean","median"))) { stop("you should choose `mean` or `median` for `method` argument") }

  if(!is.data.frame(data)) {stop("You need a data.frame object (m) to call the function.")}
  else { data <- data %>% dplyr::filter(!!FiltColName %in% FiltColVal) %>% summarize(wgs84.lng=mean(!!lng),wgs84.lat=mean(!!lat)) }

  #return(data)

  m <- m %>%
    addCircleMarkers(data = data, lng = ~wgs84.lng, lat = ~wgs84.lat, radius = OuterCircle[["radius"]], color = OuterCircle[["color"]], weight=OuterCircle[["weight"]],fillOpacity=OuterCircle[["alpha"]]) %>%
    addCircleMarkers(data = data, lng = ~wgs84.lng, lat = ~wgs84.lat, radius = InnerCircle[["radius"]], color = InnerCircle[["color"]], weight=OuterCircle[["weight"]],fillOpacity=InnerCircle[["alpha"]]) %>%
    addLabelOnlyMarkers(data = data, lng = ~wgs84.lng, lat = ~wgs84.lat, label=~as.character(label), labelOptions = labelOptions(noHide = T, direction="bottom",offset=c(0,-25),textsize="16px", textOnly = T,style=list("color"="white")))
  return(m)
}


