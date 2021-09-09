<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmployeeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->id();
            $table->string('employeeId');
            $table->string('name');
            $table->string('lastname');
            $table->date('dateOfBirth')->format('m/d/y');
            $table->date('employmentStartDate')->format('m/d/y');
            $table->date('employmentEndDate')->nullable();
            $table->string('lastNotification')->nullable();
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employees');
    }
}
