
#ifndef MAIN_H
#define MAIN_H

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>

#define RED "\x1b[31m"
#define GREEN "\x1b[32m"
#define YELLOW "\x1b[33m"
#define CYAN "\x1b[36m"
#define RESET "\x1b[0m"


int		ft_isascii(int i);
int		ft_isdigit(int i);
int		ft_isalpha(int i);
int		ft_isalnum(int i);
int		ft_isprint(int i);
void	ft_bzero(void *s, size_t n);


char	*ft_strcat(char *s1, const char *s2);
int		ft_strlen(const char *s1);
int		ft_puts(const char *s);
int		ft_toupper(int c);
int		ft_tolower(int c);

void	*ft_memset(void *b, int c, size_t len);
void 	*ft_memcpy(void *dst, const void *src, size_t n);
char	*ft_strdup(const char *s1);
void	ft_cat(int fd);
char	*ft_strnew(int n);
void	ft_putchar(char c);
void	ft_putstr(const char *s);
void	ft_strclr(char *str);
int		ft_strcmp(char *s1, char *s2);
//int		ft_add(int i, int j);
//int		ft_mult(int i, int j);
//void	ft_putstr_fd(const char *s, int fd);
//void	ft_strclr(char *s);

#endif
