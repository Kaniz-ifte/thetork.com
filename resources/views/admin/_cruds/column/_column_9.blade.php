<td>
   <span class="text-dark-75 font-weight-bold d-block font-size-lg" data-toggle="tooltip" data-theme="dark" title="{{ $row->{$column['index']} }}">{{ CutString( $row->{$column['index']} , ( isset($column['max_char'])? $column['max_char'] : '') ) }}</span>
   <span class="text-muted font-weight-bold">
        @if ($row->{$column['datetime']}!='')
             @if (isset($row->{$column['datetime_format']}))
                   {{date($row->{$column['datetime_format']},strtotime($row->{$column['datetime']}))}}
             @else
              {{date('h:i A, d M Y',strtotime($row->{$column['datetime']}))}}
             @endif

        @else n/a @endif
         </span>
</td>
