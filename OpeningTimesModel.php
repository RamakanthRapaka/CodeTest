<?php
namespace Arden;


class OpeningTimesModel extends Model
{	
    public function __construct()
    {
		parent::__construct();
		$sql = "SELECT * FROM timings";
        $result = $this->db->query($sql);
		$result = $result->fetch_all(MYSQLI_ASSOC);
		return $this->data = $result;
        /* $this->data = [
            'days' => ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'],
            'opening_hours' => [
                'Mon' => '09:00 - 17:00',
                'Tue' => '09:00 - 14:00',
                'Wed' => 'Closed',
				'Thu' => '09:00 - 17:00',
                'Fri' => '10:00 - 13:00'
            ]
        ]; */
    }

    public function getData() {
        return $this->data;
    }
}