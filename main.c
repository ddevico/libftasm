/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/10/23 15:13:31 by ddevico           #+#    #+#             */
/*   Updated: 2017/11/13 10:41:39 by davydevico       ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <assert.h>
#include <string.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include "libftasm.h"

static void print_prog (char * str)
{
	printf("\n\033[33m > %s\033[0m\n\n", str);
};

static void test_ft_toupper (void)
{
	print_prog("ft_toupper");
	printf("%c --> %c\n", 'a', ft_toupper('a'));
}

static void test_ft_tolower (void)
{
	print_prog("ft_tolower");
	printf("%c --> %c\n", 'A', ft_tolower('A'));
}

static void test_ft_isalpha (void)
{
	print_prog("ft_isalpha");
	printf("%c %d\n", 'a', ft_isalpha('a'));
	printf("%c %d\n", 'A', ft_isalpha('A'));
	printf("%c %d\n", 'z', ft_isalpha('z'));
	printf("%c %d\n", 'Z', ft_isalpha('Z'));
	printf("%c %d\n", '@', ft_isalpha('@'));
	printf("%c %d\n", '4', ft_isalpha('4'));
	printf("%c %d\n", '_', ft_isalpha('_'));
	printf("%c %d\n", '!', ft_isalpha('!'));
	printf("%c %d\n", '[', ft_isalpha('['));
	printf("%c %d\n", '{', ft_isalpha('{'));
}

static void test_ft_isascii (void)
{
	print_prog("ft_isascii");
	printf("%c %d\n", 'a', ft_isascii('a'));
	printf("%c %d\n", 209, ft_isascii(209));
	printf("%c %d\n", 0, ft_isascii(0));
	printf("%c %d\n", 127, ft_isascii(127));
	printf("%c %d\n", 128, ft_isascii(128));
}

static void test_ft_isdigit (void)
{
	print_prog("ft_isdigit");
	printf("%c %d\n", '1', ft_isdigit('1'));
	printf("%c %d\n", '5', ft_isdigit('5'));
	printf("%c %d\n", '0', ft_isdigit('0'));
	printf("%c %d\n", '/', ft_isdigit('/'));
	printf("%c %d\n", ':', ft_isdigit(':'));
}

static void test_ft_isprint (void)
{
	print_prog("ft_isprint");
	printf("%c %d\n", 32, ft_isprint(32));
	printf("%c %d\n", 33, ft_isprint(33));
	printf("%c %d\n", 128, ft_isprint(128));
}

static void test_ft_bzero (void)
{
	char str[6] = "delete";

	print_prog("ft_bzero");
	printf("str[0] = %d\n", str[0]);
	printf("str[1] = %d\n", str[1]);
	printf("str[2] = %d\n", str[2]);
	printf("\n");
	ft_bzero(str, 3);
	printf("ft_bzero effectue\n\n");
	printf("str[0] = %d\n", str[0]);
	printf("str[1] = %d\n", str[1]);
	printf("str[2] = %d\n", str[2]);
	printf("test with null\n\n");
	ft_bzero(NULL, 5);
}

static void test_ft_strcat (void)
{
	print_prog("ft_strcat");
	char		str1[7] = "abc";
	char		str2[4] = "def";

	str1[3] = '\0';
	str1[4] = '\0';

	printf("chaine 1 = %s\n", str1);
	printf("chaine 2 = %s\n", str2);
	printf("resultat = %s\n", ft_strcat(str1, str2));
}

static void test_ft_isalnum (void)
{
	print_prog("ft_isalnum");
	printf("%c %d\n", 'a', ft_isalnum('a'));
	printf("%c %d\n", 'A', ft_isalnum('A'));

	printf("%c %d\n", 'z', ft_isalnum('z'));
	printf("%c %d\n", 'Z', ft_isalnum('Z'));

	printf("%c %d\n", '@', ft_isalnum('@'));
	printf("%c %d\n", '4', ft_isalnum('4'));
	printf("%c %d\n", '_', ft_isalnum('_'));
	printf("%c %d\n", '!', ft_isalnum('!'));
	printf("%c %d\n", '[', ft_isalnum('['));
	printf("%c %d\n", '{', ft_isalnum('{'));

	printf("%c %d\n", '1', ft_isalnum('1'));
	printf("%c %d\n", '5', ft_isalnum('5'));
	printf("%c %d\n", '0', ft_isalnum('0'));
	printf("%c %d\n", '/', ft_isalnum('/'));
	printf("%c %d\n", ':', ft_isalnum(':'));
}

static void test_ft_puts (void)
{
	print_prog("ft_puts");
	ft_puts("Le texte est la !!");
}

static void test_ft_strlen(void)
{
	char str[6] = "salut";
	char str2[6] = "coucou";

	print_prog("ft_strlen");
	printf("str = %s ==> len = %d\n", str, ft_strlen(str));
	printf("str = %s ==> len = %d\n", str2, ft_strlen(str2));
}

static void test_ft_memset(void)
{
	char *str = malloc(10);
	char *str2 = malloc(10);

	print_prog("ft_memset");
	ft_memset(str, 'a', 10);
	printf("Premier memset: %s\n", str);
	ft_memset(str2, 'b', 5);
	printf("Deuxieme memset: %s\n", str2);
}

static void test_ft_memcpy(void)
{
	const char str[50] = "Born 2 code";
	char str2[50] = "";

	print_prog("ft_memcpy");
	ft_memcpy(str2, str, 5);
	printf("%s\n", str2);
	ft_memcpy(str2, str, 7);
	printf("%s\n", str2);
	ft_memcpy(str2, str, 50);
	printf("%s\n", str2);
}

static void test_ft_strdup (void)
{
	char * str = strdup("yolo");
	char * str2 = ft_strdup(str);
	char * str3 = NULL;

	print_prog("ft_strdup");
	printf("original string : [%p] [%s]\n", str, str);
	printf("duplicate string : [%p] [%s]\n", str2, str2);
	printf("test with null :\n");
	printf("str3 = %s\n", str3);
	str3 = ft_strdup(NULL);
	printf("str3 = %s\n", str3);
}

static void test_ft_cat(void)
{
	int fd;

    fd = open("Makefile", O_RDONLY);
    if (fd < 0)
        puts("Cannot open file !");
    ft_cat(fd);
    close(fd);
}

static void    test_ft_strcpy(void)
{
    char    str1[42] = "salut !";
    char    str2[42] = "je m'apelle davy !";

	print_prog("ft_strcpy");
    printf("s1: %s\n", str1);
    printf("s2: %s\n", str2);
	printf("strcpy: %s\n", strcpy(str1, str2));
    printf("ft_strcpy: %s\n", ft_strcpy(str1, str2));
}

static void    test_ft_strchr(void)
{
    char    s[42]= "je m'apelle davy !";

	print_prog("ft_strchr");
    printf("s: %s\tc: %c\n", s, 'p');
    printf("ft_strchr: %s\n", ft_strchr(s, 'p'));
    printf("s: %s\tc: %c\n", "salut toi !", 'p');
    printf("ft_strchr: %s\n", ft_strchr("salut toi !", 'p'));
}

static void test_ft_isupper(void)
{
	print_prog("ft_isupper");
	printf("%c --> %d\n", 'A', ft_isupper('A'));
	printf("%c --> %d\n", 'a', ft_isupper('a'));
}

static void test_ft_islower(void)
{
	print_prog("ft_islower");
	printf("%c --> %d\n", 'a', ft_islower('a'));
	printf("%c --> %d\n", 'A', ft_islower('A'));
}

static void test_ft_putchar(void)
{
	print_prog("ft_putchar");
	ft_putchar('D');
	ft_putchar('a');
	ft_putchar('v');
	ft_putchar('y');
	ft_putchar('\n');
}

static void test_ft_abs (void)
{
	print_prog("ft_abs");
	printf("abs of %d ? ==> %d\n", 10, ft_abs(10));
	printf("abs of %d ? ==> %d\n", -10, ft_abs(-10));
}

static void test_ft_swap (void)
{
	int a = 21;
	int b = 42;

	print_prog("ft_swap");
	printf("%d %d\n", a, b);
	ft_swap(&a, &b);
	printf("%d %d\n", a, b);
}

int		main(void)
{
	test_ft_toupper();
	test_ft_tolower();
	test_ft_isalpha();
	test_ft_isascii();
	test_ft_isdigit();
	test_ft_isprint();
	test_ft_bzero();
	test_ft_strcat();
	test_ft_isalnum();
	test_ft_puts();
	test_ft_strlen();
	test_ft_memset();
	test_ft_memcpy();
	test_ft_strdup();
	test_ft_cat();
	test_ft_strcpy();
	test_ft_strchr();
	test_ft_isupper();
	test_ft_islower();
	test_ft_putchar();
	test_ft_abs();
	test_ft_swap();
}
