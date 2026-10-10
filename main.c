#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include "colors.hpp"

int ft_strlen(char *str);
int ft_strcpy(char *dst, char *src);
int ft_strcmp(char *str1, char *str2);
int ft_write(int fd, const void *str, int size);


int main()
{

	{
		char *str = "Hello World!";
		int a = strlen(str);
		int b = ft_strlen(str);
		if (a != b)
			printf(RED "Difference in strlen funcions: %d, %d\n\n" RESET, a, b);
		else
			printf(GREEN "No difference in strlen funcions: %d, %d\n\n" RESET, a, b);

		char *str1 = malloc (a * sizeof(char));
		char *str2 = malloc (a * sizeof(char));
		strcpy(str1, str);
		ft_strcpy(str2, str);
		printf(GREEN "ft_strcopy funcion worked: \nstrcpy: \"%s\"\nstrcpy: \"%s\"\n\n" RESET, str1, str2);
		a = strlen(str1);
		b = ft_strlen(str1);
		if (a != b)
			printf(RED "Difference in strlen funcions: %d, %d\n" RESET, a, b);
		else
			printf(GREEN "No difference in strlen funcions: %d, %d\nSo ft_strcpy worked properly :thumb up: \n\n" RESET, a, b);

		str2[0] = 'I'; // give -1 so
		int ret1 = strcmp(str1, str2);
		int ret2 = ft_strcmp(str1, str2);
		if (ret1 != ret2)
			printf(RED "Difference in strcmp funcions: %d, %d\n\n" RESET, ret1, ret2);
		else
			printf(GREEN "No difference in strcmp funcions: %d, %d\n\n" RESET, ret1, ret2);

		write(1, "this is a write test with write\n", 32);
		ft_write(1, "this is a write test with ft_write\n", 35);

		write(1, "this is a write test with write\n", 40);
		ft_write(1, "this is a write test with ft_write\n", 40);


		printf("\n\n");

	}




		printf(RED "HEEEEEEERE\n" RESET);

	return 0;
}
