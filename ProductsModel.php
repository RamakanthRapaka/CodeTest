<?php
namespace Arden;


class ProductsModel extends Model
{	
    public function __construct()
    {
		parent::__construct();
		$sql = "SELECT * FROM product";
        $result = $this->db->query($sql);
		$result = $result->fetch_all(MYSQLI_ASSOC);
		return $this->data = $result;      
    }

    public function getData() {
        return $this->data;
    }
}