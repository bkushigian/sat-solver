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

#define NEG 1
#define POS 2

/**
 * CNFClauseTree represents a binary tree of sorted variables in a CNF clause. Here
 * variables are sorted by their absolute value to allow for easy cancellation within a clause.
 */
class CNFClauseTree {
protected:
    uint64_t value;
    uint64_t flags;
    uint64_t _size;
    CNFClauseTree* left;
    CNFClauseTree* right;
public:
    CNFClauseTree(var v);
    CNFClauseTree(CNFClauseTree* left, var value, CNFClauseTree* right);

    /**
     * Add var v to this tree. If the variable is already in this, return false.
     * Else return true.
     * @param v var to add
     * @return  true if this var wasn't tracked already, false otherwise
     */
    bool add_var(var v);
    bool neg() { return flags & NEG; }
    bool pos() { return flags & POS; }
    int size();

    uint64_t get_value() { return value; }
    uint64_t get_flags() { return flags; }
    CNFClauseTree* get_left(){ return left; }
    CNFClauseTree* get_right() {return right;}


};


#endif //SAT_SOLVER_VARTREE_HPP
