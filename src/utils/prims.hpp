//
// Created by ben on 9/26/17.
//
/*
 * prims.hpp is a set of primitives for our sat solver. This can be safely
 * included by the entire program without any worries of circular dependencies.
 */

#ifndef SAT_SOLVER_PRIMS_HPP
#define SAT_SOLVER_PRIMS_HPP
#include <cstdint>

/**
 * var: variable type. Negative => Not var
 *      1  -> p1
 *      2  -> p2
 *      -3 -> NOT p3
 *      etc
 */
typedef std::int64_t var;

#endif //SAT_SOLVER_PRIMS_HPP
