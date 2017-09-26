//
// Created by ben on 9/26/17.
//

#include <gtest/gtest.h>
#include "utils/vartree.hpp"

TEST(CNFClauseTreeTest, TestAddVar1) {
    CNFClauseTree* tree = new CNFClauseTree(5);
    tree->add_var(8);
    tree->add_var(3);
    tree->add_var(2);
    tree->add_var(4);
    tree->add_var(6);
    tree->add_var(9);
    EXPECT_EQ(5, tree->get_value());
    EXPECT_EQ(3, tree->get_left()->get_value());
    EXPECT_EQ(2, tree->get_left()->get_left()->get_value());
    EXPECT_EQ(4, tree->get_left()->get_right()->get_value());

    EXPECT_EQ(8, tree->get_right()->get_value());
    EXPECT_EQ(9, tree->get_right()->get_right()->get_value());
    EXPECT_EQ(6, tree->get_right()->get_left()->get_value());
}

TEST(CNFClauseTreeTest, TestAddVar2){
    CNFClauseTree* tree = new CNFClauseTree(5);
    EXPECT_EQ(1, tree->size());
    tree->add_var(8);
    EXPECT_EQ(2, tree->size());
    tree->add_var(3);
    EXPECT_EQ(3, tree->size());
    tree->add_var(-8);
    EXPECT_EQ(4, tree->size());
    tree->add_var(-8);
    tree->add_var(3);
    EXPECT_EQ(4, tree->size());
}

TEST(CNFClauseTreeTest, TestAddVar3){
    CNFClauseTree* tree = new CNFClauseTree(5);
    tree->add_var(8);
    tree->add_var(3);
    tree->add_var(-8);
    // Make sure that we are tracking both a negative and positive
    // value for our top node.
    EXPECT_EQ(NEG | POS , (NEG | POS) | tree->get_flags());
}

TEST(CNFClauseTreeTest, TestAddVar4){
    CNFClauseTree* tree = new CNFClauseTree(5);
    tree->add_var(8);
    EXPECT_EQ(true , tree->pos());
    EXPECT_EQ(false, tree->neg());
    tree->add_var(-8);
    EXPECT_EQ(true , tree->pos());
    EXPECT_EQ(false , tree->neg());
    // Make sure that we are tracking both a negative and positive
    // value for our top node.
}
