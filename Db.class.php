<?php
class Db
{
	private $host = '127.0.0.1';
	private $db   = 'urlshrt';
	private $user = 'root';
	private $pass = 'root';
	private $charset = 'utf8mb4';
	private $dsn;
	private $pdo;

	private $options = [
	    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
	    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
	    PDO::ATTR_EMULATE_PREPARES   => false,
	];

	function __construct()
	{
		$this->dsn = "mysql:host=$this->host;dbname=$this->db;charset=$this->charset";
		$this->pdo = new PDO($this->dsn, $this->user, $this->pass, $this->options);
	}

	function getId()
	{
		$q = $this->pdo->query("select max(id) as max_id from urls")->fetch();
		return $q['max_id'];
	}

	function getUrl($id)
	{
		$q = $this->pdo->prepare("select ogurl from urls where id = ?");
		$q->execute([$id]);
		$r = $q->fetch(PDO::FETCH_ASSOC);
		return $r['ogurl'];
	}

	function addUrl($url, $shorturl, $ip)
	{
		$q = $this->pdo->prepare("insert into urls (ogurl, shorturl, ip, views) values(?,?,?,?)");
		$q->execute([$url, $shorturl, $ip, 0]);
	}
}
?>