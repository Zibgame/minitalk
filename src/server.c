/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   server.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zcadinot <zcadinot@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/11/17 10:56:58 by zcadinot          #+#    #+#             */
/*   Updated: 2025/11/17 12:02:06 by zcadinot         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

void	signal_handler(int sig)
{
	static int bit_count = 0;
	static unsigned char c = 0;
	
	c = 'x'; 
	bit_count++;

	if (bit_count == 8)
	{
		write(1, &c,1);
		bit_count = 0;
		c = 0;
	}
}

int	main(void)
{
	pid_t pid;
	pid = getpid();

	show_pid(pid);
	return (0);
}
