#ifndef _LIBALLOC_H
#define _LIBALLOC_H

#include <stddef.h>

/** This is a boundary tag which is prepended to the
 * page or section of a page which we have allocated. It is
 * used to identify valid memory blocks that the
 * application is trying to free.
 */
struct	boundary_tag
{
	unsigned int magic;			//< It's a kind of ...
	unsigned int size; 			//< Requested size.
	unsigned int real_size;		//< Actual size.
	int index;					//< Location in the page table.

	struct boundary_tag *split_left;	//< Linked-list info for broken pages.	
	struct boundary_tag *split_right;	//< The same.
	
	struct boundary_tag *next;	//< Linked list info.
	struct boundary_tag *prev;	//< Linked list info.
};

/** This function is supposed to lock the memory data structures. It
 * could be as simple as disabling interrupts or acquiring a spinlock.
 * It's up to you to decide. 
 *
 * \return 0 if the lock was acquired successfully. Anything else is
 * failure.
 */
extern int liballoc_lock();

/** This function unlocks what was previously locked by the liballoc_lock
 * function.  If it disabled interrupts, it enables interrupts. If it
 * had acquiried a spinlock, it releases the spinlock. etc.
 *
 * \return 0 if the lock was successfully released.
 */
extern int liballoc_unlock();

/** This is the hook into the local system which allocates pages. It
 * accepts an integer parameter which is the number of pages
 * required.  The page size was set up in the liballoc_init function.
 *
 * \return NULL if the pages were not allocated.
 * \return A pointer to the allocated memory.
 */
extern void* liballoc_alloc(int);

/** This frees previously allocated memory. The void* parameter passed
 * to the function is the exact same value returned from a previous
 * liballoc_alloc call.
 *
 * The integer value is the number of pages to free.
 *
 * \return 0 if the memory was successfully freed.
 */
extern int liballoc_free(void*,int);

       

void *malloc(size_t n);				//< The standard function.
void *realloc(void *p, size_t n);		//< The standard function.
void *calloc(size_t nmemb, size_t size);		//< The standard function.
void  free(void *p);					//< The standard function.


#endif
