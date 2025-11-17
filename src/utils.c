/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zcadinot <zcadinot@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/11/17 10:57:01 by zcadinot          #+#    #+#             */
/*   Updated: 2025/11/17 12:33:00 by zcadinot         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

void show_pid(pid_t pid)
{
    char *str_pid;

    str_pid = ft_itoa(pid);
    if (!str_pid)
        return;
    ft_putstr_fd(str_pid, 1);
    write(1, "\n", 1);
    free(str_pid); 
}
