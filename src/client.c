/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zcadinot <zcadinot@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/11/17 10:57:40 by zcadinot          #+#    #+#             */
/*   Updated: 2025/11/17 12:30:13 by zcadinot         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

void	send_char(int pid, unsigned char c)
{
    int bit = 7;
    while (bit >= 0)
    {
        if (c & (1 << bit))
            kill(pid, SIGUSR1);
        else
            kill(pid, SIGUSR2);
        usleep(50);
        bit--;
    }
}

int main(int argc, char **argv)
{
    pid_t   pid;
    char    *msg;
    int     i;

    pid = (pid_t)ft_atoi(argv[1]);
    msg = argv[2];
    if (argc != 3)
        return (0);
    i = 0;
    while (msg[i])
    {
        send_char(pid, msg[i]);
        i++;
    }
    send_char(pid, '\0');
    return 0;
}
