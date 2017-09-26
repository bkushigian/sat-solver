//
// Created by ben on 9/26/17.
//

/**
 * vartree.hpp
 *
 * this defines the vartree struct as well a simple API for interfacing with
 * it.
 */

#ifndef SAT_SOLVER_VARTREE_HPP
#define SAT_SOLVER_VARTREE_HPP
#include "prims.hpp"

/**
 * CNFClauseTree represents a binary tree of sorted variables in a CNF clause. Here
 * variables are sorted by their absolute value to allow for easy cancellation within a clause.
 *
 */
class CNFClauseTree {
protected:
    int _size;
    var value;
    CNFClauseTree* left;
    CNFClauseTree* right;
public:
    CNFClauseTree(var v);
    CNFClauseTree(CNFClauseTree* left, var value, CNFClauseTree* right);

    bool add_var(var v);
    int size() {return _size;}

};


#endif //SAT_SOLVER_VARTREE_HPP
