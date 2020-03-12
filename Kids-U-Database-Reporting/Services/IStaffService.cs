﻿using Kids_U_Database_Reporting.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Kids_U_Database_Reporting.Services
{
    public interface IStaffService
    {

        Task<ApplicationUser[]> GetAllStaffAsync();
        Task<ApplicationUser> GetStaffAsync(String x);
        Task<UserRole[]> GetUserRolesAsync();
    }
}
