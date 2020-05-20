<?php

namespace Arden;

class OpeningTimesView extends View
{
    public function __construct($data = null)
    {
        if($data) {
            $this->data = $data;
        }
    }

    public function setData($data) {
        $this->data = $data;
    }

    public function getData() {
        return $this->data;
    }

    public function render() {
        // Render opening times
		echo '<div class="row">';
		foreach($this->data as $dat) {
		echo '<div class="col-lg-7">'.$dat['days'];
		echo ' : ';
	    echo $dat['opening_hours'];
		echo '</div>';
	    }
		echo '</div>';	
    }
}