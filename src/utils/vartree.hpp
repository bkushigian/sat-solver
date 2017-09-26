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
#include <iostream>

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
    /**
     * @return true if the negated var is present in this node, else false
     */
    bool neg() { return flags & NEG; }

    /**
     * @return true if the positive var is present, else true
     */
    bool pos() { return flags & POS; }

    /**
     * @return true if both the negated and positive var are present
     */
    bool can_cancel() { return neg() && pos(); }

    /**
     * Recursively find the size of this tree
     * @return size of the tree
     */
    int size();

    /**
     * Like size, but don't include cancellable nodes
     * @return
     */
    int cnf_adjusted_size();

    uint64_t get_value() { return value; }
    uint64_t get_flags() { return flags; }
    CNFClauseTree* get_left(){ return left; }
    CNFClauseTree* get_right() {return right;}
    bool has_left(){ return left != nullptr; }
    bool has_right(){ return right != nullptr; }

    /**
     * @return in order list of all vars. NOTE that these are ordered by the
     * absolute value
     */
    var* in_order();

    /**
     * @return in order list of all vars in this clause with cancellations
     * removed. NOTE that these are ordered by the absolute value
     */
    var* cnf_adjusted_in_order();

};


#endif //SAT_SOLVER_VARTREE_HPP
