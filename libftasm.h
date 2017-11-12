/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftasm.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/05 14:01:29 by ddevico           #+#    #+#             */
/*   Updated: 2017/11/12 15:01:37 by davydevico       ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTASM_H
# define LIBFTASM_H

int			ft_toupper(int c);
int			ft_tolower(int c);
int			ft_isalpha(int c);
int			ft_isascii(int c);
int			ft_isdigit(int c);
int			ft_isprint(int c);
int			ft_isalnum(int c);
void		ft_bzero(void * s, size_t n);
char		*ft_strcat(char *s1, const char *s2);
int  		ft_puts(const char *s);

int			ft_strlen(char *str);
void		*ft_memset(void *b, int c, size_t len);
void		*ft_memcpy(void *s1, const void *s2, size_t n);
char		*ft_strdup(char *s);

void		ft_cat(int fd);

void		*ft_strcpy( void *dst, const void *src);
char		*ft_strchr(char *s, int c);
int			ft_isupper(int c);
int			ft_islower(int c);
void		ft_putchar(char c);
int			ft_abs(int i);
void		ft_swap(int *a, int *b);

#endif
