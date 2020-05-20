<?php

namespace Arden;

class ProductsView extends View
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
		echo '<div class="col-lg-4">';
		echo '<img class="rounded-circle" src="'.$dat['image'].'" alt="Generic placeholder image" width="140" height="140">';
		echo '<h2>'.$dat['name'].'</h2>';
		echo '<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>';
		echo '<p><a class="btn btn-secondary" href="#" role="button">View details »</a></p>';
		echo '</div>';
	    }
		echo '</div>';	
    }
}