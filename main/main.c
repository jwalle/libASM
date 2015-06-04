/* --- HEADER --- */

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

void puts_test()
{
	printf(YELLOW "%s" RESET, "PUTS\n");
	puts("TEST");
	ft_putstr("TEST\n");
	ft_putstr("TESTTESTTESTTESTTEST\n");
	puts("TESTTESTTESTTESTTEST");
	//puts(NULL);
	//ft_putstr(NULL);
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
	printf(YELLOW "======= End of tests. =======\n");
	printf(GREEN "%d tests passed\n" RESET, pass);
	printf(RED "%d tests failed\n" RESET, fail);
	return (0);
}
