/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/06/04 17:43:54 by jwalle            #+#    #+#             */
/*   Updated: 2015/06/10 17:00:26 by jwalle           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# include "main.h"

int fail = 0;
int pass = 0;

void ass_str(char *s1, char *s2)
{
	if (!strcmp(s1, s2))
	{
		printf(GREEN "OK\n" RESET);
		pass++;
	}
	else
	{
		printf(RED "NOPE\n" RESET);
		fail++;
	}
}

void ass_mem(void *s1, void *s2, int n)
{
	if (!memcmp(s1, s2, n))
	{
		printf(GREEN "OK\n" RESET);
		pass++;
	}
	else
	{
		printf(RED "NOPE\n" RESET);
		fail++;
	}
}

void ass_int(int n1, int n2)
{
	if (n1 == n2)
	{
		printf(GREEN "OK\n" RESET);
		pass++;
	}
	else
	{
		printf(RED "NOPE\n" RESET);
		fail++;
	}
}

void strclr_test()
{
	printf(YELLOW "%s" RESET, "STRCLR\n");
	char *str1 = strdup("test plop 42\n");
	char *str2 = strdup("test plop 42\n");
	int n = strlen(str1);

	bzero(str1, n);
	ft_strclr(str2);
	ass_mem(str1, str2, n);
}

void strnew_test()
{
	printf(YELLOW "%s" RESET, "STRNEW\n");
	char *str1;
	char *str2;

	str1 = ft_strnew(100);
	str2 = malloc(101);
	bzero(str2, 101);
	ass_mem(str1, str2, 101);
}

void cat_test()
{
	int fd;
	printf(YELLOW "%s" RESET, "CAT\n");

	fd = open("file_test.f", O_RDONLY);
	ft_cat(fd);
}

void strdup_test()
{
	printf(YELLOW "%s" RESET, "STRDUP\n");
	ass_str(ft_strdup("aaaaaa"), "aaaaaa");
	ass_str(ft_strdup(""), "");
}

void memcpy_test()
{
	char c1[100], c2[100];
	int n = 100;
	printf(YELLOW "%s" RESET, "MEMCPY\n");

	memset(c1, 33, 100);
	memset(c2, 42, 100);

	ft_memcpy(c1, c2, 100);
	ass_mem(c1, c2, n);
	ass_mem(ft_memcpy(c2, c1, 100), c2,n);
	ass_mem(ft_memset(c1, c2, 0), c1, n);
}

void memset_test()
{
	char b1[100], b2[100];
	int n = 100;
	printf(YELLOW "%s" RESET, "MEMSET\n");

	ft_memset(b1, 42, 100);
	memset(b2, 42, 100);
	ass_mem(b1, b2, n);
	ass_mem(memset(b1, 99, 0), ft_memset(b2, 99, 0), n);
	ass_mem(memset(b1, 20, 50), ft_memset(b2, 20, 50), n);
}

void strlen_test()
{
	printf(YELLOW "%s" RESET, "STRLEN\n");
	char *s1 = "PLOP";

	ass_int(strlen(s1), ft_strlen(s1));
	ass_int(strlen(""),ft_strlen(""));
	ass_int(strlen("testtesttesttest"), ft_strlen("testtesttesttest"));
}

void putstr_test()
{
	printf(YELLOW "%s" RESET, "PUTSTR\n");

	printf("printf :\n"); printf("TEST\n");
	printf("ft_putstr :\n") ; ft_putstr("TEST\n");
	printf("------------------------------ \n");
	printf("printf :\n") ;printf("TESTTESTTESTTESTTEST\n");
	printf("ft_putstr :\n") ; ft_putstr("TESTTESTTESTTESTTEST\n");
	printf("-------------------------------\n");
	//printf("puts :\n") ;puts(NULL);
	//printf("ft_puts :\n") ;ft_puts(NULL);
}
void puts_test()
{
	printf(YELLOW "%s" RESET, "PUTS\n");

	printf("puts :\n"); puts("TEST");
	printf("ft_puts :\n") ;ft_puts("TEST");
	printf("------------------------------ \n");
	printf("puts :\n") ;puts("TESTTESTTESTTESTTEST");
	printf("ft_puts :\n") ;ft_puts("TESTTESTTESTTESTTEST");
	printf("-------------------------------\n");
	printf("puts :\n") ;puts(NULL);
	printf("ft_puts :\n") ;ft_puts(NULL);
}


void toupper_test()
{
	int i;
	unsigned char c;
	printf(YELLOW "%s" RESET, "TOUPPER\n");

	i = 0;
	while (i < 500)
	{
		c = i;

		if (toupper(c) != ft_toupper(c))
		{
			printf(RED "NOPE, erreur = %c\n" RESET, i);
			fail++;
			return ;
		}
		i++;
	}
	printf(GREEN "OK\n" RESET);
	pass++;
}

void tolower_test()
{
	int i;
	unsigned char c;
	printf(YELLOW "%s" RESET, "TOLOWER\n");

	i = 0;
	while (i < 500)
	{
		c = i;

		if (tolower(c) != ft_tolower(c))
		{
			printf(RED "NOPE, erreur = %c\n" RESET, i);
			fail++;
			return ;
		}
		i++;
	}
	printf(GREEN "OK\n" RESET);
	pass++;
}

void isalnum_test()
{
	int i;
	unsigned char c;
	printf(YELLOW "%s" RESET, "ISALNUM\n");

	i = 0;
	while (i < 500)
	{
		c = i;

		if (isalnum(c) && !ft_isalnum(c) || !isalnum(c) && ft_isalnum(c))
		{
			printf(RED "NOPE, erreur = %c\n" RESET, i);
			fail++;
			return ;
		}
		i++;
	}
	printf(GREEN "OK\n" RESET);
	pass++;
}

void isascii_test()
{
	int i;
	unsigned char c;
	printf(YELLOW "%s" RESET, "ISASCII\n");

	i = 0;
	while (i < 500)
	{
		c = i;
		if (isascii(c) && !ft_isascii(c) || !isascii(c) && ft_isascii(c))
		{
			printf(RED "NOPE, erreur = %c\n" RESET, i);
			fail++;
			return ;
		}
		i++;
	}
	printf(GREEN "OK\n" RESET);
	pass++;
}

void isprint_test()
{
	int i;
	unsigned char c;
	printf(YELLOW "%s" RESET, "ISPRINT\n");

	i = 0;
	while (i < 500)
	{
		c = i;

		if (isprint(c) && !ft_isprint(c) || !isprint(c) && ft_isprint(c))
		{
			printf(RED "NOPE, erreur = %c\n" RESET, i);
			fail++;
			return ;
		}
		i++;
	}
	printf(GREEN "OK\n" RESET);
	pass++;
}

void isdigit_test()
{
	int i;
	unsigned char c;
	printf(YELLOW "%s" RESET, "ISDIGIT\n");

	i = 0;
	while (i < 500)
	{
		c = i;

		if (isdigit(c) && !ft_isdigit(c) || !isdigit(c) && ft_isdigit(c))
		{
			printf(RED "NOPE, erreur = %c\n" RESET, i);
			fail++;
			return ;
		}
		i++;
	}
	printf(GREEN "OK\n" RESET);
	pass++;
}

void isalpha_test()
{
	int i;
	unsigned char c;
	printf(YELLOW "%s" RESET, "ISALPHA\n");

	i = 0;
	while (i < 500)
	{
		c = i;

		if (isalpha(c) && !ft_isalpha(c) || !isalpha(c) && ft_isalpha(c))
		{
			printf(RED "NOPE, erreur = %c\n" RESET, i);
			fail++;
			return ;
		}
		i++;
	}
	printf(GREEN "OK\n" RESET);
	pass++;
}


void strcat_test()
{
	printf(YELLOW "%s" RESET, "STRCAT\n");
	char *s1 = strdup("first.\n");
	char *s2 = strdup("first.\n");
	char *s3 = strdup("second.\n");
	char *s4 = strdup("second.\n");

	ass_str(strcat(s1, s3), ft_strcat(s2, s4));
}


void bzero_test()
{
	printf(YELLOW "%s" RESET, "BZERO\n");
	char *s1 = strdup("test one\n");
	char *s2 = strdup("test one\n");
	char *s3 = strdup("test one\n");
	char *s4 = strdup("test one\n");
	char *s5 = strdup("");
	char *s6 = strdup("");

	ft_bzero(s1, 4);
	bzero(s2, 4);
	ass_str(s1, s2);
	ft_bzero(s3, 20);
	bzero(s4, 20);
	ft_bzero(s5, 10);
	bzero(s6, 10);
	ass_str(s3,s4);
	ass_str(s5,s6);
}

int main(void)
{
	printf(YELLOW "======= Starting tests. =======\n");
	bzero_test();
	strcat_test();
	isalpha_test();
	isdigit_test();
	isprint_test();
	isalnum_test();
	isascii_test();
	toupper_test();
	tolower_test();
	puts_test();
	strlen_test();
	memset_test();
	memcpy_test();
	strdup_test();
	cat_test();
	printf(YELLOW "======= Bonus tests. =======\n");
	strnew_test();
	putstr_test();
	strclr_test();
	printf(YELLOW "======= End of tests. =======\n");
	printf(GREEN "%d tests passed\n" RESET, pass);
	printf(RED "%d tests failed\n" RESET, fail);
	return (0);
}
