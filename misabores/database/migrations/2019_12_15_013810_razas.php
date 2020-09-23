<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Razas extends Migration
{

    public function up()
    {
      Schema::create('razas', function (Blueprint $table){
      $table->increments('Clave_raza');
      $table->string('raza');
      $table->string('activo',2);

      $table->rememberToken();
      $table->timestamps();
      });
  }


    public function down()
    {
      Schema::drop('razas');
    }
}
