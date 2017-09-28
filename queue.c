/*
 * Código para diagnostico de conhecimento básico em C.
 * Desenvolvido para o curso CET-088, CET-082
 * Modificado por Leard Fernandes, 2017
 * Developed by R. E. Bryant, 2017
*/

 /*
  * Este programa implementa uma fila que suporta ambas as operações FIFO e LILO.
  *
  * Ele utiliza uma lista unicamente ligada para representar o conjunto de
  * elementos da fila
*/

#include <stdlib.h>
#include <stdio.h>

#include "harness.h"
#include "queue.h"

/*
  Cria uma fila vazia.
  Retorna NULL se o espaço na puder ser alocado.
*/
queue_t *q_new()
{
    queue_t *q =  malloc(sizeof(queue_t));
    if (q == NULL)
    {
    	return NULL;
    }
    q->head = NULL;
    q->tail = NULL;
    q->tam = 0;
    return q;
}

/*  Libera todo o espaço utilizado pela fila. */
void q_free(queue_t *q)
{
	list_ele_t *prox;
	list_ele_t *atual;
	if(q == NULL)
	{
		return;
	}
	atual = q->head;

	while (atual != NULL)
	{
		prox = atual->next;
		free (atual);
		atual = prox;
	}    
    free(q);
}

/*
  Tenta inserir o elemento na cabeça da fila.
  Retorna true se houve sucesso
  Retorna false se q é NULL ou não foi possível alocar espaço
*/
bool q_insert_head(queue_t *q, int v)
{
    list_ele_t *newh;
    /* O que você deverá fazer se q é NULL ? */
    if (q == NULL)
    {
    	return false;
    }
    else 
    {

   		newh = malloc(sizeof(list_ele_t));
   		if (newh == NULL)
   		{
   		   return false;
   		}
    }
    
    
    newh->value = v;
    newh->next = q->head;
    q->head = newh;
    
    if(q->tail == NULL)
    {
    	q->tail = q->head;
    }

    q->tam++;
    return true;
}


/*
  Tenta inserir o elemento na calda da fila.
  Retorna true se houve sucesso
  Retorna false se q é NULL ou não foi possível alocar espaço
*/
bool q_insert_tail(queue_t *q, int v)

{

	list_ele_t *newh = NULL;

	if (q == NULL)
	{
		return false;
	}
    else
    {

	   	newh = malloc(sizeof(list_ele_t));

	   	if (newh == NULL)
	   	{
	   		return false;
	   	}
	}

	newh->value = v;
	newh->next = NULL;

	if(q->tail != NULL)
	{
		q->tail->next = newh;
	}
	q->tail = newh;

	if(q->head == NULL)
	{
		q->head = q->tail;
	}
	
	q->tam++;
	return true;
    

}

/*
  Tenta remover o elemento na cabeça da fila.
  Retorna true se houve sucesso
  Retorna false se q é NULL ou vazia
  Se vp é não-NULL e o elemento removido, armazena o valor removido em *vp
  Qualquer armazenamento não utilizado deve ser liberado
*/
bool q_remove_head(queue_t *q, int *vp)
{

	if (q==NULL || q->tam == 0)
    {
    	return false;
    }

    list_ele_t *aux = q->head;

    if (vp !=  NULL)
    {
    	*vp = aux->value;
    }
    
    q->head = q->head->next;	
    if (q->head == NULL){
    	q->tail = NULL;
    }
    	
    free(aux);
    q->tam--;

 	return true;
}
/*
  Retorna o número de elementos na fila.
  Retorna 0 se q é NULL ou vazia
*/
int q_size(queue_t *q)
{
  	if (q==NULL)
    	return 0;

    else
    	return q->tam;
}

/*
  Inverte os elementos na fila.

  Sua implementação não dever alocar ou liberar quaisquer elementos (e.g., pela
  chamada de q_insert_head ou q_remove_head). Ao invés disso, ela deverá
  modificar os ponteiros na estrutura de dados existente.
*/
void q_reverse(queue_t *q)
{
    /* Você precisa escrever o código completo para esta função */

    if(q == NULL)
    {
    	return;
    }

	if (q->tam > 1)
	{
		
		list_ele_t *apontado = q->head ;
   		list_ele_t *apontador = apontado-> next;
    
    	list_ele_t *aux = apontador->next;

    	if (q->tam == 2 )
    		apontador->next =apontado;

    	else
    	{
    		while (apontador != NULL)
	    	{
	    		apontador->next = apontado;
	    		apontado = apontador;
	    		apontador = aux;
	    		if (aux!=NULL)
	    			aux = aux->next;
    		}
    	}


   		q->head->next = NULL;
   		aux = q->head;
   		q->head = q->tail;
   		q->tail = aux;
    	
	}

 
}