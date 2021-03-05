<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddEmpExpTypeToEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('employees', function (Blueprint $table) {
            //
            $table->string('emp_exp_type');
            $table->string('emp_father_name');            
            $table->string('emp_gender');
            $table->string('emp_qualification');
            $table->string('emp_college');
            $table->integer('emp_percent');            
            $table->string('emp_country');
            $table->string('emp_state');
            $table->string('emp_city');
            $table->string('emp_district');
            $table->integer('emp_country_zone');
            $table->integer('emp_state_zone');
            $table->integer('emp_district_zone');
            $table->text('emp_address');
            $table->float('emp_salary', 8, 2);	
            $table->string('emp_ref_phone');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('employees', function (Blueprint $table) {
            //
        });
    }
}
