<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Colores extends Migration
{
    public function up()
    {
      Schema::create('colores', function (Blueprint $table){
      $table->increments('Clave_color');
      $table->string('color');
      $table->string('activo',2);

      $table->rememberToken();
      $table->timestamps();
      });
    }

    public function down()
    {
      Schema::drop('colores');
    }
}
