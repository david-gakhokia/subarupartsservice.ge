<tr>
<td class="header">
<a href="{{ $url }}" style="display: inline-block;">
@if (trim($slot) === 'Laravel')
<img src="https://laravel.com/img/notification-logo.png" class="logo" alt="Laravel Logo">
@else
<img src="https://imagedelivery.net/iju3uLOJWht1WeOaYRYgxA/7d61e2d9-31f3-4774-4347-8a24196ab600/foodly" width="100" alt="FOODLY">
<br>
{{ $slot }}
@endif
</a>
</td>
</tr>
