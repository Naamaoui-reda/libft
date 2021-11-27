/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rnaamaou <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/12 22:55:19 by rnaamaou          #+#    #+#             */
/*   Updated: 2021/11/21 18:49:24 by rnaamaou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include"libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void(*del)(void *))
{
	t_list	*tete;
	t_list	*new;

	if (!lst || !f)
		return (NULL);
	tete = ft_lstnew(f(lst->content));
	lst = lst->next;
	while (lst)
	{
		new = ft_lstnew(f(lst->content));
		if (!new)
		{
			ft_lstclear(&tete, del);
			return (NULL);
		}
		ft_lstadd_back(&tete, new);
		lst = lst->next;
	}
	return (tete);
}
