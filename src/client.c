/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zcadinot <zcadinot@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/11/17 10:57:40 by zcadinot          #+#    #+#             */
/*   Updated: 2025/11/17 11:52:34 by zcadinot         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

int main(int argc, char **argv)
{
    pid_t   pid;
    char    *message;

    pid = (pid_t)ft_atoi(argv[1]);
    message = argv[2];
    if (argc != 3)
        return (0);
    show_pid(pid);
    ft_putstr_fd(message,1);
    return 0;
}
