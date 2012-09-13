/*************************************************************************
*
*  Welcome to HYRAX!
*  Andrea M. Jokisaari
*  CASL/MOOSE
*
*  11 January 2012
*
*************************************************************************/

#ifndef ACTRANSFORMELASTICDF_H
#define ACTRANSFORMELASTICDF_H

#include "ACBulk.h"

#include "ElasticityTensorR4.h"
#include "RankTwoTensorTonks.h"

#include <string>

/**
 * ACTransformElasticDF handles the elastic energy term for a solid-solid transformation
 * in a phase field model, with coupled conserved and non-conserved parameters.  The
 * variable this kernel is working with is an order parameter.  It can handle an
 * arbitrary number of order parameters.
 */

// Forward declaration
class ACTransformElasticDF;

template<>
InputParameters validParams<ACTransformElasticDF>();

/**
 * ACTransformElasticDF handles the elastic energy term for a solid-solid transformation
 * in a phase field model, with coupled conserved and non-conserved parameters.
 */
class ACTransformElasticDF : public ACBulk
{
public:

  ACTransformElasticDF(const std::string & name, InputParameters parameters);

protected:

  /**
   * computeDFDOP()
   * @return returns the partial(elastic free energy/order parameter)
   */
  virtual Real computeDFDOP(PFFunctionType type);

  virtual Real calculateFirstTerm();

  virtual Real calculateSecondTerm();

  virtual Real calculateFirstJacobianTerm();

  virtual Real calculateSecondJacobianTerm();

private:

  // system elasticity tensor, varies in space
  MaterialProperty<ElasticityTensorR4> & _elasticity_tensor;
  MaterialProperty<std::vector<RankTwoTensorTonks > > & _eigenstrains_rotated_MP;
  MaterialProperty<RankTwoTensorTonks> & _local_strain;

  //MaterialProperty<std::vector<SymmElasticityTensor> > & _d_elasticity_tensor;
  MaterialProperty<RankTwoTensorTonks> & _elastic_strain;
  MaterialProperty<std::vector<RankTwoTensorTonks> > & _d_eigenstrains_rotated_MP;

  // number of orientation variants
  unsigned int _n_OP_vars;

  // orientation variant number for this kernel (1 to n)
  unsigned int _OP_number;

  // Vector of references to the coupled order parameters
  std::vector<VariableValue *> _coupled_vars;

};

#endif //ACTRANSFORMELASTICDF_H
