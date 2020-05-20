<?php

namespace Arden;

abstract class Model
{
    protected $data;
	protected $db;

    /**
     * @return array
     */
    abstract public function getData();
	
	public function __construct()
  {
    $this->db = new \Mysqli('localhost', 'root', '', 'codetest');
  }
  
}