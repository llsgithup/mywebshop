<?php
class _Model {
	var $_modelName = "";
	var $_db = false;
	var $_result = false;
	function _Model($mName) {
		$this -> _modelName = DB_Prefix . "_" . $mName;
		//$mName代表表名,譬如传入user不用加前缀 user->shop_user
		$this -> modelInit();
		//初始化NotOrm
	}

	function modelInit() {
		load_lib("db", "NotORM");
		$structure = new NotORM_Structure_Convention($primary = 'id', //这里告诉notorm 我们的主键都是id 这种英文单词
		$foreign = '%sid', //同理，外键都是 外表名+id    这个很重要，否则notorm拼接sql的时候会拼错。
		$table = '%s', $prefix = '');

		$pdo = new PDO(DB_Dsn, DB_User, DB_Pwd);
		$this -> _db = new NotORM($pdo, $structure);
	}

	function loadall() {
		$tbName = $this -> _modelName;
		//表名
		$this -> _result = $this -> _db -> $tbName;
	}

	function load($where)//只会加载一条
	{
		$tbName = $this -> _modelName;
		//表名
		if (trim($where) == null)
			return false;
		//禁止程序员没有任何条件加载全表
		$this -> _result = $this -> _db -> $tbName -> select("*") -> where($where) -> limit(1);

	}

	function __get($pname) {

		if ($this -> _result && count($this -> _result) == 1) {

			$ret = $this -> _result -> fetch();
			//取第一行
			return $ret[$pname];

		}
		return false;
	}

	function all() {
		return $this -> _result;
	}

}
?>