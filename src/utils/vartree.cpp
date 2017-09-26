//
// Created by ben on 9/26/17.
//

#include "vartree.hpp"

CNFClauseTree::CNFClauseTree(var v) {
    left = nullptr;
    right = nullptr;
    flags = 0;
    value = v < 0 ? -v : v;
    flags = v < 0 ? NEG : POS;
}

CNFClauseTree::CNFClauseTree(CNFClauseTree *left, var v, CNFClauseTree *right) {
    this->left = left;
    this->right = right;
    this->value = v < 0 ? -v : v;
    flags = v < 0 ? NEG : POS;
}

bool CNFClauseTree::add_var(var v) {

    if (v == 0){
        // Variables start at 1 (since we can't represent -0 in 2s complement)
        // This should probably throw an error...
        // TODO: Error
        return false;
    }

    uint64_t abs_v = v < 0 ? -v  : v;
    uint64_t flag  = v < 0 ? NEG : POS;

    CNFClauseTree* t = this, *t_last =  nullptr;

    while (t != nullptr){
        if (abs_v == t->value){
            // Try to add to the tree
            if (flag & t->flags){
                // Already included
                return false;
            };
            t->flags |= flag;   // Update flags to include v
            return true;
        }
        t_last = t;
        if (abs_v < t->value){
            t = t->left;
        } else {
            t = t->right;
        }
    }

    // If we reach here we did not find our value and t_last is guaranteed
    // to have the node in which to insert

    t = t_last; // For ease of typing :)
    if (abs_v < t->value){
        t->left  = new CNFClauseTree(v);
    } else {
        t->right = new CNFClauseTree(v);
    }
    return true;

}

int CNFClauseTree::size() {
    // How many nodes are we tracking? 0, 1 or 2?
    int nodeSize = (neg() ? 1 : 0) + (pos() ? 1 : 0);
    return nodeSize + (left  == nullptr ? 0 : left -> size())
                    + (right == nullptr ? 0 : right-> size());
}
