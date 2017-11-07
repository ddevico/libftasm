/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftasm.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/05 14:01:29 by ddevico           #+#    #+#             */
/*   Updated: 2017/11/07 17:19:24 by ddevico          ###   ########.fr       */
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

#endif
