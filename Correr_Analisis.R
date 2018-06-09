# Caso 3

getwd()

setwd("C:/Users/alfre/OneDrive/Documentos/GitHub/Software Actuarial III/Caso 3/UCI HAR Dataset")

library( plyr )

cleanAndMergeDatasets <- function()        
{
        message( "cargando la base de datos de Train...")
        
        trainX <- read.table( "./train/X_train.txt", sep = "")
        trainY <- read.table( "./train/y_train.txt", sep = "")
        
        message( "Cargando la base de datos de Test...")
        
        testX <- read.table( "./test/X_test.txt", sep = "")
        testY <- read.table( "./test/y_test.txt", sep = "")
        
        message( "cargando otros archivos de datos...")
        
        trainSubject <- read.table( "./train/subject_train.txt", sep = "")
        testSubject <- read.table( "./test/subject_test.txt", sep = "")
        
        colnamesX <- read.table( "./features.txt", sep = "")
        activityLabels <- read.table( "./activity_labels.txt", sep = "")        
        
        colnames( trainSubject ) <- c( "subjectid" )
        colnames( testSubject ) <- c( "subjectid" )
        
        colnames( activityLabels ) <- c( "activityid", "activity" )
        
        colnames( trainY ) <- c( "activityid" )
        colnames( testY ) <- c( "activityid" )
        
        message( "Uniendo todos los conjuntos de datos por sujeto y actividad..")
        
        trainY <- join( trainY, activityLabels, by = c( "activityid" ) )
        testY <- join( testY, activityLabels, by = c( "activityid" ) )
        
        message( "Preparando los nombres de las columnas..." )
        
        colnamesX <- gsub( "-", "_", colnamesX[,2]);
        colnamesX <- gsub( "\\(\\)", "", colnamesX);
        colnamesX <- gsub( "mean", "Mean", colnamesX);
        colnamesX <- gsub( "std", "Std", colnamesX);
        
        colnames(trainX) <- colnamesX
        colnames(testX) <- colnamesX
        
        message( "Uniendo los conjuntos de datos Test y Train...")
        
        trainX <- cbind( activity = trainY$activity, trainX )  
        trainX <- cbind( subjectid = trainSubject$subjectid, trainX )  
        
        testX <- cbind( activity = testY$activity, testX ) 
        testX <- cbind( subjectid = testSubject$subjectid, testX )
        
        totalX <- rbind( trainX, testX ) 
        
        totalX
}

calculateAverages <- function( mergedX )
  
{
        
        npattern = "_Mean|Std"
        tidyset <- mergedX[ c( "subjectid", "activity"
                         , grep( npattern, names(mergedX) , value = TRUE ) ) ]
                
        message( "Cálculando los promedios de las mediciones seleccionadas...")
        
        meanOfTidyset <- ddply(tidyset
                        , .(subjectid, activity)
                        , numcolwise( mean ) )
        
        colnames( meanOfTidyset )[3:81] <- paste( "AvgOf"
                                         , colnames( meanOfTidyset )[3:81]
                                         , sep = "_" )
        
        meanOfTidyset
}

writeToFile <- function( tidyset, filename )
{
        
        write.table( tidyset
                   , file = filename
                   , sep = ","
                   , col.names = TRUE
                   , row.names = FALSE )
        
        message("Proceso completo y se crea el siguiente archivo")
        message(" - UCI-HAR-Dataset-Tidy.txt - Conjunto de datos ordenados finales")                
}

prepareTidyDataSet <- function()
{
        totalX <- cleanAndMergeDatasets();
        tidyset <- calculateAverages( totalX )
        writeToFile( tidyset, "UCI-HAR-Dataset-Tidy.txt" )
        tidyset
}

#source("Correr_Analisis.R")

finaldataset <- prepareTidyDataSet()
finaldataset
