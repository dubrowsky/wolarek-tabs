<?php
namespace My\Shop\Product;

use Floxim\Floxim\System\Fx as fx;

class Controller extends \Floxim\Shop\Product\Controller 
{
    public function doListByParent()
    {
        $this->_meta['ajax_access'] = true;
        
        if ($this->getParam('is_fake')) {
            if (!$this->getParam('limit')) {
                $this->setParam('limit', 10);
            }
            return $this->doList();
        }
        if (!isset($_POST['parent_id'])) {
            $this->assign('items', fx::collection());
            return;
        }
        $this->onQueryReady(function($e) {
            $e['query']->where('parent_id', (int) $_POST['parent_id']);
        });
        
        return $this->doList();
    }
}