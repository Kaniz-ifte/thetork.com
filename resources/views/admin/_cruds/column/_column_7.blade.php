<td>
   <span class="text-dark-75 font-weight-bold d-block font-size-lg" data-toggle="tooltip" data-theme="dark" title="{{ $row->{$column['index']} }}">
         {{ CutString( $row->{$column['index']} , ( isset($column['max_char'])? $column['max_char'] : '') )}}
   </span>
</td>
