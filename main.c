#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include "colors.hpp"

size_t ft_strlen(const char *s);
char* ft_strcpy(char *dst, const char *src);
int ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t n);
ssize_t ft_read(int fd, void *buf, size_t nbytes);


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

		write(1, RESET "this is a write test with write\n", 36);
		ft_write(1, RESET "this is a write test with ft_write\n", 39);
		printf("\n\n");


		char *r1 = malloc (10 * sizeof(char));
		char *r2 = malloc (10 * sizeof(char));

		write(1, BLUE "this read test with read function\n" RESET, 43);
		read(1, r1, 10); // ou 9?
		ft_write(1, BLUE "this read test with ft_read function\n" RESET, 46);
		ft_read(1, r2, 10); // ou 9?

		printf("\n\n");

	}




		printf(RED "HEEEEEEERE\n" RESET);

	return 0;
}
