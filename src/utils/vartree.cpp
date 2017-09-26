//
// Created by ben on 9/26/17.
//

#include <stack>
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
    return nodeSize + (has_left()  ?  left -> size() : 0)
                    + (has_right() ?  right-> size() : 0);
}


int CNFClauseTree::cnf_adjusted_size() {
    int nodeSize = can_cancel() ? 0 : 1;
    return nodeSize + (has_left()  ? left -> cnf_adjusted_size() : 0)
                    + (has_right() ? right-> cnf_adjusted_size() : 0);
}

var *CNFClauseTree::in_order() {
    // TODO
    int s = size();
    var* result = new var[s];
    return nullptr;
}

var *CNFClauseTree::cnf_adjusted_in_order(){
    // TODO
    int s = cnf_adjusted_size(); // size of result
    int i = 0;                   // current index to update in result
    var* result = new var[s];    // array to return

    std::stack<CNFClauseTree*> next_tree;
    CNFClauseTree* t = this;

    // Push left trees
    while(t != nullptr){
        next_tree.push(t);
        t = t->get_left();
    }

    while(next_tree.size() > 0){
        // Pop off the top of the stack
        t = next_tree.top();
        next_tree.pop();



        if (t->neg()) {
            result[i++] = -1 * t->get_value();
        } if (t->pos()) {
            result[i++] = t->get_value();
        }

        // Push Left of Right
        if (t -> has_right()) {
            t = t->get_right();
            while(t != nullptr){
                next_tree.push(t);
                t = t->get_left();
            }
        }
    }
    return result;
}
