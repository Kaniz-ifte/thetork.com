<td>
     @php
     if(is_array($row->{$column['array_index']})==true){
          $values=ArrayToColumns($column['model'],$row->{$column['array_index']},$column['index']);
          $string="";
          foreach ($values as $value) {
               $string=$string.$value->{$column['index']}.$column['separator']." ";
          }
     }else{
          $string="";
     }

     @endphp
   <span class="text-dark-75 font-weight-bold d-block font-size-lg" data-toggle="tooltip" data-theme="dark" title="{{ $string}}">
         {{ CutString( $string , ( isset($column['max_char'])? $column['max_char'] : '') )}}
   </span>
</td>
