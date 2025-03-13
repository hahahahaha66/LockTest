#include "hash_lock.h"

#include <stdio.h>
#include <stdlib.h>


void hashInit(hash_lock_t* bucket) {
  for(int i=0;i<HASHNUM;i++){
    bucket->table[i].head=NULL;
    pthread_mutex_init(&(bucket->table[i].mutex),NULL);
  }
}

int getValue(hash_lock_t* bucket, int key) {
  int index=HASH(key);
  pthread_mutex_lock(&(bucket->table[index].mutex));
  Hnode* node=bucket->table[index].head;
  while(node!=NULL){
    if(node->key==key){
      pthread_mutex_unlock(&(bucket->table[index].mutex));
      return node->value;
    }
    node=node->next;
  }
  pthread_mutex_unlock(&(bucket->table[index].mutex));
  return -1;
}

void insert(hash_lock_t* bucket, int key, int value) {
  int index=HASH(key);
  pthread_mutex_lock(&(bucket->table[index].mutex));
  Hnode* node=bucket->table[index].head;
  while(node!=NULL){
    if(node->key==key){
      node->value=value;
      pthread_mutex_unlock(&(bucket->table[index].mutex));
      return ;
    }
    node=node->next;
  }
  Hnode* new_node=(Hlist)malloc(sizeof(Hnode));
  new_node->key=key;
  new_node->value=value;
  new_node->next=bucket->table[index].head;
  bucket->table[index].head=new_node;
  pthread_mutex_unlock(&(bucket->table[index].mutex));
  return ;
}

int setKey(hash_lock_t* bucket, int key, int new_key) {
    int index = HASH(key);
    int new_index = HASH(new_key);

    pthread_mutex_lock(&(bucket->table[index].mutex));

    Hnode* node = bucket->table[index].head;
    Hnode* last_node = NULL;

    while (node != NULL) {
        if (node->key == key) {
            if (last_node)
                last_node->next = node->next;
            else
                bucket->table[index].head = node->next;
            pthread_mutex_unlock(&(bucket->table[index].mutex));
            pthread_mutex_lock(&(bucket->table[new_index].mutex));
            node->next = bucket->table[new_index].head;
            bucket->table[new_index].head = node;
            node->key=new_key;
            pthread_mutex_unlock(&(bucket->table[new_index].mutex));
            return 0;
        }
        last_node = node;
        node = node->next;
    }

    pthread_mutex_unlock(&(bucket->table[index].mutex));
    return -1;  
}








