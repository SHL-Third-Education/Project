#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

typedef struct _arr_manage
{
	int x;
	int y;
	int **arr;
} arr_manage;

#if 1
typedef struct _queue
{
	int g;
	int x;
	int y;
	struct _queue *link;
} queue;
#endif

#if 1
typedef struct _stack
{
	struct _stack *link;
	int g;
	int x;
	int y;
} stack;
#endif

int grid[6][6] =	{
						{0, 0, 1, 0, 0, 0},
						{0, 0, 1, 0, 0, 0},
						{0, 0, 1, 0, 0, 0},
						{0, 0, 0, 0, 1, 0},
						{0, 0, 1, 1, 1, 0},
						{0, 0, 0, 0, 1, 0}
					};

int init[3] = {0, 0};
int goal[3] = {5, 5};
int cost = 1;

#if 0
int open[8][3] =	{
						{0, init[0], init[1]},
					};
#endif

int delta[4][2] = 	{
						{-1,  0},
						{ 0, -1},
						{ 1,  0},
						{ 0,  1}
					};

char name[4] = {'^', '<', 'v', '>'};

int **get_array(int x, int y)
{
	int i;
	int **tmp = (int **)malloc(sizeof(int *) * y);

	for(i = 0; i < y; i++)
		tmp[i] = (int *)malloc(sizeof(int) * x);

	return tmp;
}

void print_sim_arr(int *arr)
{
	int i;

	for(i = 0; i < 3; i++)
		printf("%4d", arr[i]);

	printf("\n");
}

void print_arr(arr_manage *am)
{
	int i;

	printf("arr = \n");

	for(i = 0; i < am->y; i++)
		printf("%4d", am->arr[0][i]);

	printf("\n");
}

void print_double_arr(arr_manage *am)
{
        int i, j;

        printf("arr = \n");

        for(i = 0; i < am->y; i++)
	{
		for(j = 0; j < am->x; j++)
	                printf("%4d", am->arr[i][j]);

		printf("\n");
	}

        printf("\n");
}

void transform_format(int *res, arr_manage *am)
{
    int i, j;

    for(i = 0; i < am->y; i++)
        for(j = 0; j < am->x; j++)
            res[i] += am->arr[i][j] * pow(10, 2 - j); 
}

void sort_descend(int *arr, int len)
{
    int i, j, key;//, len = 3;

    printf("len = %d\n", len);

    for(i = len - 1; i > 0; i--)
    {
        key = arr[i - 1];

        for(j = i; arr[j] > key; j++)
            arr[j - 1] = arr[j];

        arr[j - 1] = key;
    }
}

void sort_ascend(int *arr, int len)
{
	int i, j, key;

	printf("len = %d\n", len);

	for(i = 1; i < len; i++)
	{
		key = arr[i];

		for(j = i - 1; arr[j] > key; j--)
			arr[j + 1] = arr[j];

		arr[j + 1] = key;
	}
}

void inverse_transform(int *arr, int **res)
{
    int i, j;

    for(i = 0; i < 3; i++)
        for(j = 0; j < 3; j++)
            res[i][j] = (int)(arr[i] / pow(10, 2 - j)) % 10;
}

void get_arr_manage(int x, int y, arr_manage **am)
{
	int i;

	(*am) = (arr_manage *)malloc(sizeof(arr_manage));
	(*am)->x = x;
	(*am)->y = y;

	(*am)->arr = (int **)malloc(sizeof(int *) * y);

	for(i = 0; i < y; i++)
		(*am)->arr[i] = (int *)malloc(sizeof(int) * x);
}

queue *get_queue_node(void)
{
	queue *tmp;
	tmp = (queue *)malloc(sizeof(queue));
	tmp->link = NULL;
	tmp->g = 0;
	tmp->x = 0;
	tmp->y = 0;

	return tmp;
}

void enqueue(queue **head, int g, int x, int y)
{
	queue **tmp = head;

	while(*tmp)
		if(!(*tmp)->link)
			tmp = &(*tmp)->link;

	*tmp = get_queue_node();

	(*tmp)->g = g;
	(*tmp)->x = x;
	(*tmp)->y = y;
}

queue *chg_node(queue *head)
{
	queue *tmp = head;

	if(!head->link)
		head = head->link;

	free(tmp);

	return head;
}

void dequeue(queue **head, int *arr)
{
	queue **tmp = head;

	while(*tmp)
	{
		if(!memcmp(&(*tmp)->g, arr, 12))
		{
			(*tmp) = chg_node(*tmp);
			return;
		}
		else
			tmp = &(*tmp)->link;
	}
}

#if 0
void dequeue(queue **head, int *arr)
{
        queue **tmp = head;

        while(*tmp)
        {
                memmove(arr, &(*tmp)->g, 12);
                (*tmp) = chg_node(*tmp);
		break;
        }
}
#endif


#if 0
void dequeue(queue **head, int *arr)
{
	queue **tmp = head;

	while(*tmp)
	{
		if((*tmp)->link)
			tmp = &(*tmp)->link;
		else
		{
			memmove(arr, &(*tmp)->g, 12);
			(*tmp) = chg_node(*tmp);
			return;
		}
	}

	//*tmp = NULL;
}
#endif

stack *get_stack_node(void)
{
	stack *tmp;
	tmp = (stack *)malloc(sizeof(stack));
	tmp->link = NULL;
	return tmp;
}

stack *push(stack *top, int g, int x, int y)
{
	stack *tmp;
	tmp = top;
	top = get_stack_node();
	top->g = g;
	top->x = x;
	top->y = y;
	top->link = tmp;

	return top;
}

stack *pop(stack *top, int *arr)
{
	stack *tmp;
	tmp = top;

	if(!top)
	{
		printf("Stack is empty!\n");
		return 0;
	}

	memmove(arr, &tmp->g, 12);
	top = tmp->link;
	free(tmp);
	return top;
}

#if 0
stack **extract_arr(stack **esp, int *arr)
{
	if(!(*esp))
	{
		printf("Stack is empty!\n");
		return 0;
	}

	memmove(arr, &(*esp)->g, 12);

	return &(*esp)->link;
}
#endif

void extract_arr(queue **esp, int *arr)
{
	memmove(arr, &(*esp)->g, 12);
	*esp = (*esp)->link;
}

//stack *modify_arr(arr_manage *am, stack *top, int cnt)
//void modify_arr(arr_manage *am, stack *top, int cnt)
void modify_arr(arr_manage *am, queue *head, int cnt)
{
	int i, j, x = am->x, y = am->y;
	queue **esp = &head;

	if(cnt > 1)
		am->arr = (int **)realloc(am->arr, sizeof(int) * cnt);

	am->y = cnt;

	for(i = y; i < cnt; i++)
		am->arr[i] = (int *)malloc(sizeof(int) * x);

	for(i = 0; i < cnt; i++)
	{
		int tarr[3] = {0};
		int tmp = 0;

		if(i < y)
		{
#if 0
			top = pop(top, tarr);
			esp = extract_arr(esp, tarr, cnt);
#endif
			extract_arr(esp, tarr);

			am->arr[i][0] = tarr[0];
			am->arr[i][1] = tarr[1];
			am->arr[i][2] = tarr[2];

			continue;
		}

#if 0
		top = pop(top, tarr);
		esp = extract_arr(esp, tarr);
#endif
		extract_arr(esp, tarr);

		am->arr[i][0] = tarr[0];
		am->arr[i][1] = tarr[1];
		am->arr[i][2] = tarr[2];
	}

	//return top;
}

void extract_data(arr_manage *ir, int *tarr)
{
	int tmp = 0;
	int y = ir->y;

	memmove(&tmp, ir->arr[0], sizeof(int));

	tarr[0] = (tmp / 100) % 10;
	tarr[1] = (tmp / 10) % 10;
	tarr[2] = tmp % 10;

	memmove(&ir->arr[0][0], &ir->arr[0][1], y * sizeof(int));

	(ir->y)--;
}

void find_path(void)
{
	int i, cnt = 0;
	int found = 0, resign = 0;

	int x = init[0], x2;
	int y = init[1], y2;
	int g = 0, g2;
	int tarr[3] = {0};

	int *res = NULL;

	queue *head = NULL;
	//stack *top = NULL;

	arr_manage *open = NULL;
	arr_manage *closed = NULL;

	arr_manage *ir = NULL;

#if 0
	int **open = get_array(3, 1);
	open[0][0] = g;
	open[0][1] = x;
	open[0][2] = y;
#endif

	get_arr_manage(3, 1, &open);

	open->arr[0][0] = g;
	open->arr[0][1] = x;
	open->arr[0][2] = y;

#if 0
	int **closed = get_array(6, 6);
	closed[init[0]][init[1]] = 1;
#endif

	get_arr_manage(6, 6, &closed);
	closed->arr[init[0]][init[1]] = 1;

	get_arr_manage(open->y + 1, 1, &ir);

	/* Big Problem at Sorting Element.
	   They doesn't sort with Queue Algorithm(enqueue, dequeue).
	   Need to change enqueue and dequeue code. */

	while(!found && !resign)
	{

		if(!(open->y))
		{
			resign = 1;
			printf("failed to find path\n");
			exit(-1);
		}
		else
		{
			transform_format(ir->arr[0], open);
			ir->y = open->y;
			//sort_descend(ir->arr[0], ir->x);
			sort_ascend(ir->arr[0], ir->x);
			print_arr(ir);

			if(!(ir->arr[0][0]))
			{
				g = 0;
				x = 0;
				y = 0;
			}
			else
			{
				//top = pop(top, tarr);
				//dequeue(&head, tarr);
				extract_data(ir, tarr);
				g = tarr[0];
				x = tarr[1];
				y = tarr[2];

				dequeue(&head, tarr);

				cnt--;
				printf("next = \n");
				print_sim_arr(tarr);
			}

			if(x == goal[0] && y == goal[1])
				found = 1;
			else
			{

				for(i = 0; i < 4; i++)
				{
					x2 = x + delta[i][0];
					y2 = y + delta[i][1];

					if(x2 >= 0 && x2 < closed->y && y2 >= 0 && y2 < closed->x)
					{
						if(!(closed->arr[x2][y2]) && !grid[x2][y2])
						{
							g2 = g + cost;
							enqueue(&head, g2, x2, y2);
							//top = push(top, g2, x2, y2);
							closed->arr[x2][y2] = 1;
							cnt++;
						}
					}
				}
				printf("cnt = %d\n", cnt);
				modify_arr(open, head, cnt);
				print_double_arr(open);

				//extract_all_data(head, res, cnt);
				sleep(1);
			}

			/*
				sort();
				reverse();
				pop();
			*/
		}
	}
}

int main(void)
{
	find_path();
	return 0;
}
