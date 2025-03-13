#include "list_lock.h"

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>







// #include <pthread.h>

// typedef int DataType;

// typedef struct node {
//   DataType value;
//   struct node* next;
// } LNode, *LinkList;

// typedef struct {
//   LinkList head;
//   pthread_mutex_t mutex;
//   pthread_cond_t cond;
// } list_lock_t;

// void listInit(list_lock_t* list);
// void producer(list_lock_t* list, DataType value);
// void consumer(list_lock_t* list);
// int getListSize(list_lock_t* list);


void listInit(list_lock_t* list) {
  pthread_mutex_init(&(list->mutex),NULL);
  pthread_cond_init(&(list->cond),NULL);
  list->head=NULL;
}

void producer(list_lock_t* list, DataType value) {
  pthread_mutex_lock(&(list->mutex));
  LNode* new_node=(LinkList)malloc(sizeof(LNode));
  new_node->value=value;
  new_node->next=list->head;
  list->head=new_node;
  pthread_cond_broadcast(&(list->cond));
  pthread_mutex_unlock(&(list->mutex));
}

void consumer(list_lock_t* list) {
  pthread_mutex_lock(&(list->mutex));
  while(list->head==NULL){
    pthread_cond_wait(&(list->cond),&(list->mutex));
  }
  LNode*temp= list->head;
  list->head=list->head->next;
  free(temp);
  pthread_mutex_unlock(&(list->mutex));
}

int getListSize(list_lock_t* list) {
  pthread_mutex_lock(&(list->mutex));
  int count=0;
  LNode* node=list->head;
  while(node!=NULL){
    node=node->next;
    count++;
  }
  pthread_mutex_unlock(&(list->mutex));
  return count;
}