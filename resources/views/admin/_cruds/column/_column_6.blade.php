<td class="pl-0 py-8">
   <div class="d-flex align-items-center">
        <div class="symbol symbol-50 flex-shrink-0 mr-4">
            <div class="symbol-label" style="background-image: url('{{Storage::disk(env('APP_DISK'))->url($row->{$column['image']} ) }}')"></div>
        </div>
        <div>
            <span class="text-dark-75 font-weight-bold mb-1 font-size-lg" data-toggle="tooltip" data-theme="dark" title="{{ $row->{$column['index']} }}">{{ CutString( $row->{$column['index']} , ( isset($column['max_char'])? $column['max_char'] : '') ) }}</span>
            <span class="text-muted font-weight-bold d-block" data-toggle="tooltip" data-theme="dark" title="{{ $row->{$column['index_1']} }}">{{ CutString( $row->{$column['index_1']} , ( isset($column['max_char_1'])? $column['max_char_1'] : '')) }}</span>
        </div>
   </div>
</td>
