#include "list_lock.h"

#include <stdio.h>
#include <stdlib.h>


void listInit(list_lock_t* list) {
  list->head=(LinkList)malloc(sizeof(LNode));
  pthread_mutex_init(&(list->mutex),NULL);
  pthread_cond_init(&(list->cond),NULL);
}

void producer(list_lock_t* list, DataType value) {
  pthread_mutex_lock(&(list->mutex));
  LNode* temp=list->head;
  while(temp->next!=NULL){
    temp=temp->next;
  }
  LNode* new_node=(LinkList)malloc(sizeof(LNode));
  temp->next=new_node;
  new_node->next=NULL;
  new_node->value=value;
  pthread_mutex_unlock(&(list->mutex));
  pthread_cond_signal(&(list->cond));
}

void consumer(list_lock_t* list) {
  if(list->head->next==NULL){
    pthread_cond_wait(&(list->cond),&(list->mutex));
  }
  LNode* temp1=list->head;
  LNode* temp2=list->head;
  while(temp1->next!=NULL){
    temp2=temp1;
    temp1=temp1->next;
  }
  temp2->next=NULL;
  free(temp1);
}

int getListSize(list_lock_t* list) {
  LNode* temp=list->head;
  int count=0;
  while(temp->next!=NULL){
    temp=temp->next;
    count++;
  }
  return count;
}