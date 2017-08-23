/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jaleman <jaleman@student.42.us.org>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/02/19 08:01:21 by jaleman           #+#    #+#             */
/*   Updated: 2017/02/19 08:01:22 by jaleman          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

/*
** Header files dependencies.
*/

# include <unistd.h>
# include <string.h>
# include <wchar.h>
# include <stdlib.h>
# include <stdint.h>

/*
** Macro function to shift 'x', one (1) bit at the left.
*/

# define FT_BIT(x)	(1 << (x))

/*
** Prototypes from libft functions.
*/

void				ft_bzero(void *s, size_t n);
size_t				ft_strlen(const char *s);
char				*ft_strdup(const char *s1);
char				*ft_strncpy(char *dst, const char *src, size_t n);
int					ft_atoi(const char *str);
int					ft_isdigit(int c);
void				*ft_memalloc(size_t size);
char				*ft_strnew(size_t size);
char				*ft_strsub(char const *s, unsigned int start, size_t len);
void				ft_putchar(char c);
void				ft_putstr(char const *s);
void				ft_putunbr(uintmax_t n);
char				*ft_strrev(char *str);
char				*ft_str_to_lowcase(char *str);
void				ft_putnchar(char c, int n);
int					ft_wclen(wchar_t wchar);
size_t				ft_wcslen(wchar_t *wstr);
wchar_t				*ft_wcsdup(wchar_t *src);
wchar_t				*ft_wcscpy(wchar_t *dst, const wchar_t *src);
wchar_t				*ft_wcsnew(size_t size);
wchar_t				*ft_wcsncpy(wchar_t *dst, const wchar_t *src, size_t n);
int					ft_putwstr(wchar_t *str);
int					ft_putwchar(wchar_t c);
char				*ft_itoa(int n);
char				*ft_strjoin(char const *s1, char const *s2);
char				*ft_strcat(char *s1, const char *s2);

#endif
