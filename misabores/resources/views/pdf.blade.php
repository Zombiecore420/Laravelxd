<!DOCTYPE html>
<html lang="en">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <title>Reporte de Usuarios</title>
</head>
<body> 
<div class="page-content"> 
    <div class="panel">
        <h4 align="center">Sabores</h4><br>
        <h4 align="center">Reporte de Usuarios</h4><br><br>
        <table border="1">
          <thead>
          <tr>
          <th >Nombre</th>
		<th >Sexo</th>
		<th>Telefono</th>
		<th >Calle</th>
		<th >Colonia</th>
		<th >Municipio</th>
		<th >CP</th>
		<th >Estado</th>
		<th >Operaciones</th></tr>
           
          </tr>
          </thead>
          <tbody>
            
@foreach($consulta as $c)
              <tr>
                <td>{{ $a->id }}</td>
                <td>{{ $a->nombre }}</td>
                <td>{{ $a->apellidos }}</td>
                <td>{{ $a->status }}</td>
                <td>{{ $a->telefono }}</td>
                <td>{{ $a->email }}</td>
              </tr>
            @endforeach
          </tbody>
        </table>
    </div>
</div>
</body>
</html>






<td>{{$c->nombre}} {{$c->app_usu}} {{$c->apm_usu}}</td>
<td>{{$c->sex_usu}}</td>
<td>{{$c->tel_usu}}</td>
<td>{{$c->calle_usu}} {{$c->ncalle_usu}}</td>
<td>{{$c->colonia_usu}}</td>
<td>{{$c->municipio_usu}}</td>
<td>{{$c->cp_usu}}</td>
<td>{{$c->estado_usu}}</td>
<td>

</td></tr>
@endforeach
</table>


