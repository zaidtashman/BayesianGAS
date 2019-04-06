#include "PriorStack.h"
#include "GASModelFactory.h"
#include "GASModel.h"
#include "BetaGenTEGARCH.h"
#include "BetaTEGARCH.h"

#include <Rcpp.h>
using namespace Rcpp;

GASModel* GASModelFactory::BuildGASModel(String modelStr)
{
  if (modelStr=="BetaGenTEGARCH") {
    return new BetaGenTEGARCH();
  }else if (modelStr=="BetaTEGARCH") {
    return new BetaTEGARCH();
  }else{
    stop("Specify an implemented model, see doc for available models.");
    return NULL;
  }
}

GASModel* GASModelFactory::BuildGASModelWPar(
    String modelStr, NumericVector initParams)
{
  if (modelStr=="BetaGenTEGARCH") {
    return new BetaGenTEGARCH(initParams);
  }else if (modelStr=="BetaTEGARCH") {
    return new BetaTEGARCH(initParams);
  }else{
    stop("Specify an implemented model, see doc for available models.");
    return NULL;
  }
}



GASModel* GASModelFactory::BuildGASModelWParWPrior(
    String modelStr, NumericVector initParams, PriorStack priorStack)
{
  if (modelStr=="BetaGenTEGARCH") {
    return new BetaGenTEGARCH(initParams, priorStack);
  }else if (modelStr=="BetaTEGARCH") {
    return new BetaTEGARCH(initParams, priorStack);
  }else{
    stop("Specify an implemented model, see doc for available models.");
    return NULL;
  }
}
