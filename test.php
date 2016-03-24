<?php
function red($str,$a)
{
	return "<font color='red'>".$str.$a."</font>";
}
	$str="{red('user.user_name','123')}";
	$varName="user";
	if(preg_match_all("/{(.*?".$varName."\.\w{1,30}.*?)}/is", $str,$result))
		{
			$result=$result[1];
			foreach($result as $r)
			{
				 $r=str_replace("user.user_name", 'ls', $r);
				 
				 eval('$last='.$r.';');
				 if($last)
				 {
				 echo $last;}
			}	
		}
	?>