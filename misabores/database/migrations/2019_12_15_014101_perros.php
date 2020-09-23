<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Perros extends Migration
{
  public function up()
  {
    Schema::create('perros', function (Blueprint $table){
       $table->increments('Clave_perro');
       $table->string('archivo');
       $table->integer('Clave_color')->unsigned();
       $table->foreign('Clave_color')->references('Clave_color')->on('colores');
       $table->string('tamaño');
       $table->string('detalle');
       $table->string('vacunas');
       $table->string('sexo');
       $table->integer('Clave_raza')->unsigned();
       $table->foreign('Clave_raza')->references('Clave_raza')->on('razas');
       $table->string('activo',2);

       $table->rememberToken();
       $table->timestamps();
    });

  }


  public function down()
  {
    Schema::drop('perros');
  }
}
