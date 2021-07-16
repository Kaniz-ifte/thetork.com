<td>
   <span class="text-dark-75 font-weight-bold d-block font-size-lg">
        @if ($row->{$column['datetime']}!='') {{date('h:i A',strtotime($row->{$column['datetime']}))}}@else n/a @endif</span>
   <span class="text-muted font-weight-bold">@if ($row->{$column['datetime']}!='') {{date('d M Y',strtotime($row->{$column['datetime']}))}}@else n/a @endif</span>
</td>
