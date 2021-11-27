/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rnaamaou <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/12 15:12:13 by rnaamaou          #+#    #+#             */
/*   Updated: 2021/11/21 18:46:55 by rnaamaou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include"libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	t_list	*b;

	while (*lst)
	{
		(*del)((*lst)->content);
		b = (*lst)->next;
		free(*lst);
		(*lst) = b;
	}
	*lst = NULL;
}
