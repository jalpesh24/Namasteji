<nav class="navbar-default navbar-side" role="navigation">
    <div class="sidebar-collapse">
    <?php 
        if(Auth::user()->role_type == 3){ ?>
            <ul class="nav" id="main-menu">           
            <li>
                <a href="{{ URL::to('/') }}">Dashboard</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-money"></i>Meeting Menu<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                    <!-- <a href="{{ URL::to('/projects') }}">Projects<span class="label label-marketing pull-right" style="margin-top:4px"></span></a> -->
                    <a href="{{ URL::to('/meeting') }}">Meeting<span class="label label-marketing pull-right" style="margin-top:4px"></span></a>
                    <a href="{{ URL::to('/marketingcategory') }}">Marketing Category<span class="label label-sales pull-right" style="margin-top:4px"></span></a>
                    <a href="{{ URL::to('/productcategory') }}">Product Category<span class="label label-sales pull-right" style="margin-top:4px"></span></a>
                    </li>
                </ul>
            </li>
            </ul>
        <?php } if(Auth::user()->role_type == 2){ ?>?>
        <ul class="nav" id="main-menu">

            <li>
                <a class="active-menu" href="#"><i class="fa fa-dashboard"></i>System<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ URL::to('/') }}">Dashboard</a>
                        <a href="{{ route('settings') }}">Settings</a>
                    </li>
                </ul>
            </li>
            <li>
                <!-- <a href="#"><i class="fa fa-user"></i>Dependencies<span class="fa arrow"></span></a> -->
                <!-- <ul class="nav nav-second-level"> -->
                   
                        <a href="{{ route('clients') }}">Clients<span class="label label-dependencies pull-right" style="margin-top:4px;">{{ Cache::get('countClients') }}</span></a>
                        <a href="{{ route('employees') }}">Employees<span class="label label-dependencies pull-right" style="margin-top:4px">{{ Cache::get('countEmployees') }}</span></a>
                        <a href="{{ route('deals') }}">Deals<span class="label label-dependencies pull-right" style="margin-top:4px">{{ Cache::get('countDeals') }}</span></a>
                        <a href="{{ route('companies') }}">Companies<span class="label label-dependencies pull-right" style="margin-top:4px">{{ Cache::get('countCompanies') }}</span></a>
                    
                <!-- </ul> -->
            </li>
            <li>
                <a href="#"><i class="fa fa-money"></i>Marketing<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('products') }}">Products<span class="label label-marketing pull-right" style="margin-top:4px">{{ Cache::get('countProducts') }}</span></a>
                        <a href="{{ route('tasks') }}">Tasks<span class="label label-marketing pull-right" style="margin-top:4px">{{ Cache::get('countTasks') }}</span></a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="fa fa-shopping-cart"></i> Sales<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('finances') }}">Finances<span class="label label-sales pull-right" style="margin-top:4px">{{ Cache::get('countFinances') }}</span></a>
                        <a href="{{ route('sales') }}">Sales<span class="label label-sales pull-right" style="margin-top:4px">{{ Cache::get('countSales') }}</span></a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#"><i class="fa fa-shopping-cart"></i> Master<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('countryzone') }}">Country Zone<span class="label label-sales pull-right" style="margin-top:4px">{{ Cache::get('countcountryZone') }}</span></a>
                        <a href="{{ route('statezone') }}">State Zone<span class="label label-sales pull-right" style="margin-top:4px">{{ Cache::get('countstateZone') }}</span></a>
                        <a href="{{ route('districtzone') }}">District Zone<span class="label label-sales pull-right" style="margin-top:4px">{{ Cache::get('coundistrictZone') }}</span></a>
                        <a href="{{ route('marketing_category') }}">Marketing Category<span class="label label-sales pull-right" style="margin-top:4px"></span></a>
                        <a href="{{ route('product_category') }}">Product Category<span class="label label-sales pull-right" style="margin-top:4px"></span></a>
                    </li>
                </ul>
            </li>

        </ul>
        <ul style="margin-top: 10px; color: #dee7f1;margin-left:-30px;font-size: 14px;"></a>
            <h4>Informations <a href="{{ route('reload-info') }}"><span class="refresh-info">Refresh</span></a></h4>
            <li><i class="fa fa-money" aria-hidden="true"></i> Today income:  {{ Cache::get('todayIncome') }}</li>
            <li><i class="fa fa-money" aria-hidden="true"></i> Yesterday income: {{ Cache::get('yesterdayIncome') }}</li>
            <li><i class="fa fa-money" aria-hidden="true"></i> Cash turnover:  {{ Cache::get('cashTurnover') }}</li>
            <br>
            <li><i class="fa fa-cogs" aria-hidden="true"></i> Operations: {{ Cache::get('countAllRowsInDb')  }}</li>
            <li><i class="fa fa-book" aria-hidden="true"></i> System logs: {{ Cache::get('countSystemLogs') }}</li>
        </ul>
        <?php } ?>
        
    </div>
</nav>
