<div class="container">	
	<div class="col-md-6">
	{include "abc.html"}
{foreach:users name="user"}
	你好:{username}{red('user.user_name')}
{/endforeach}</div>

<div class="col-md-6">
{foreach:users name="user"}
	你好{user.user_pwd}
{/endforeach}
</div>
</div>