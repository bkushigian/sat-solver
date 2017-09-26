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

TEST(CNFClauseTreeTest, TestNeg_and_Pos){
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

TEST(CNFClauseTreeTest, TestCanCancel){
    CNFClauseTree* tree = new CNFClauseTree(5);
    EXPECT_FALSE(tree->can_cancel());
    tree->add_var(8);
    EXPECT_FALSE(tree->can_cancel());
    EXPECT_FALSE(tree->get_right()->can_cancel());
    tree->add_var(-8);
    EXPECT_FALSE(tree->can_cancel());
    EXPECT_TRUE (tree->get_right()->can_cancel());
    tree->add_var(-5);
    EXPECT_TRUE (tree->can_cancel());
    // Make sure that we are tracking both a negative and positive
    // value for our top node.
}


TEST(CNFClauseTreeTest, Test_cnf_adjusted_size1){
    CNFClauseTree* tree = new CNFClauseTree(5);
    int arr[] = {3,1,4,2,8,6,7,9,10,-10,-5,-2};
    int arr_size = 12;
    for (int i = 0; i < arr_size; ++i){
        tree->add_var(arr[i]);
    }

    EXPECT_EQ(13, tree->size());
    EXPECT_EQ(7, tree->cnf_adjusted_size());
}

TEST(CNFClauseTreeTest, Test_cnf_adjusted_in_order1){
    CNFClauseTree* tree = new CNFClauseTree(5);
    int arr_size = 12;
    int arr[] = {3,1,4,2,8,6,7,9,10,-10,-5,-2};
    var exp[] = {1,3,4,6,7,8,9};

    for (int i = 0; i < arr_size; ++i){
        tree->add_var(arr[i]);
    }

    var* in_order = tree->cnf_adjusted_in_order();
    for (int i = 0; i < 7; ++i){
        EXPECT_EQ(exp[i], in_order[i]);
    }
}
