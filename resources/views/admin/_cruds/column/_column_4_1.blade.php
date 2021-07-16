<td>
   <span class="text-dark-75 font-weight-bold d-block font-size-lg">

        @if ($row->{$column['datetime']}!='')
             @if (isset($row->{$column['datetime_format']}))
                   {{date($row->{$column['datetime_format']},strtotime($row->{$column['datetime']}))}}
             @else
              {{date('h:i A, d M Y',strtotime($row->{$column['datetime']}))}}
             @endif

        @else n/a @endif

        </span>
</td>
