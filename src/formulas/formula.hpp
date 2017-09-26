//
// Created by ben on 9/26/17.
//

#ifndef SAT_SOLVER_FORMULA_HPP
#define SAT_SOLVER_FORMULA_HPP

#include <cstdint>
#include "../utils/prims.hpp"


/**
 * cnf_clause: this is a list of variables that represents their disjunction
 */
typedef struct _clause {
    var* vars;
    int capacity;    // Maximum capacity
    int size;        // total number of variables used
} cnf_clause;

/**
 * cnf_formula: a struct representing a CNF formula. This is a glorified list of
 * cnf_clauses representing the conjunction.
 */
typedef struct _formula {
    cnf_clause* clauses;
    int capacity;    // Maximum capacity
    int size;        // total number of variables used
} cnf_formula;

/**
 * create new CNF clause
 * @param size
 * @return
 */
cnf_clause* new_cnf_clause(int size);

/**
 * Create a new CNF formula
 * @param size Number of clause pointers to allocate
 * @return a pointer to a new formula, NULL on error
 */
cnf_formula* new_cnf_formula(int size);

/**
 * Add a new variable to clause
 * @param clause CNF clause to add to
 * @param v variable to add to clause
 * @return  true on success, false otherwise
 */
bool cnf_add_var_to_clause(cnf_clause* clause, var v);

/**
 * Add a CNF clause to a CNF formula
 * @param f
 * @param c
 * @return
 */
bool cnf_add_clause_to_formula(cnf_formula* f, cnf_clause c);

#endif //SAT_SOLVER_FORMULA_HPP
