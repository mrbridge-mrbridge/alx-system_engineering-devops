#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>


int infinite_while(void);

/**
 * main - creats five zombie processes
 *
 * Return: 0
 */
int main(void)
{
	for (int i = 0; i < 5; i++)
	{
		pid_t pid = fork();
		if (pid == 0)
			exit (0);
		else
			printf("Zombie process created, PID: %d\n", pid);
	}
	return (infinite_while());
}

/**
 * infinite_while - keeps programme in forever loop
 *
 * Return: 0
 */
int infinite_while(void)
{
    	while (1)
    	{
        	sleep(1);
    	}
    	return (0);
}
