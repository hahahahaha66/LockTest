#include "hash_lock.h"

#include <stdio.h>
#include <stdlib.h>


void hashInit(hash_lock_t* bucket) {
  for(int i=0;i<HASHNUM;i++){
    bucket->table[i].head=(Hlist)malloc(sizeof(Hnode));
    pthread_mutex_init(&(bucket->table[i].mutex),NULL);
  }
}

int getValue(hash_lock_t* bucket, int key) {
  int index=HASH(key);
  pthread_mutex_lock(&(bucket->table[index].mutex));
  Hnode* node=bucket->table[index].head;
  while(node->next!=NULL){
    if(node->key==key){
      return node->value;
    }
    node=node->next;
  }
  pthread_mutex_unlock(&(bucket->table[index].mutex));
}

void insert(hash_lock_t* bucket, int key, int value) {
  int index=HASH(key);
  pthread_mutex_lock(&(bucket->table[index].mutex));
  Hnode*node=bucket->table[index].head;
  while(node->next!=NULL){
    if(node->key==key){
      node->key=key;
      return ;
    }
    node=node->next;
  }
  Hnode* new_node=(Hlist)malloc(sizeof(Hnode));
  node->next=new_node;
  new_node->next=NULL;
  new_node->key=key;
  new_node->value=value;
  pthread_mutex_unlock(&(bucket->table[index].mutex));
  return ;
}

int setKey(hash_lock_t* bucket, int key, int new_key) {
  int index=HASH(key);
  int new_index=HASH(new_key);
  Hnode*node=bucket->table[index].head;
  Hnode*new_node=bucket->table[index].head;
  int value=0;
  while(node->next!=NULL){
    if(node->key==key){
      value=node->value;
      insert(bucket,new_key,value);
      return 0;
    }
    node=node->next;
  }
  return -1;
}