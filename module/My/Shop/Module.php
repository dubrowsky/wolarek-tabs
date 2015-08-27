<?php
namespace My\Shop;

use \Floxim\Floxim\System\Fx as fx;

class Module extends \Floxim\Floxim\Component\Module\Entity {
    public function init() {
        fx::component()->apply(function($com) {
            if (preg_match("~^my.shop.~", $com['keyword'])) {
                fx::template()->import($com['keyword']);
            }
        });
    }
}