//
// Created by ben on 9/26/17.
//

#ifndef SAT_SOLVER_LLIST_HPP
#define SAT_SOLVER_LLIST_HPP

#include <cstdint>

typedef struct _llist{
    int64_t value;
    struct _llist* next;
}llist ;


#endif //SAT_SOLVER_LLIST_HPP
