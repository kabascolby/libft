/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_toupper.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: apachkof <apachkof@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/11/19 16:38:49 by apachkof          #+#    #+#             */
/*   Updated: 2013/11/19 19:28:02 by apachkof         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		toupper(int c)
{
	if (c >= 'a' && c <= 'z')
	{
		return (c - 'a' + 'A');
	}
	return (c);
}

