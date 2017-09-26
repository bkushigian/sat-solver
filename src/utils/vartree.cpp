//
// Created by ben on 9/26/17.
//

#include "vartree.hpp"

CNFClauseTree::CNFClauseTree(var v) {
    left = nullptr;
    right = nullptr;
    this->value = value;
}

CNFClauseTree::CNFClauseTree(CNFClauseTree *left, var value, CNFClauseTree *right) {
    this->left = left;
    this->right = right;
    this->value = value;
}
